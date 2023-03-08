-- setup
require("neodev").setup({})

-- import lspconfig plugin safely
local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

-- import cmp-nvim-lsp plugin safely
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

-- Add additional capabilities supported by nvim-cmp
local capabilities = cmp_nvim_lsp.default_capabilities()

-- NOTE: on_attach()
-- will enable listed key mappings only when an lsp is attached
-- to the buffer
local on_attach = function(_, bufnr)
  -- NOTE: plugins like rust-tools, mason, Lspsaga & null-ls
  -- will bring custom functions with them. In here we can attach them
  -- to the buffers which needs them, e.g.
  -- rust-tool mappings only for the rust-lsp
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
  vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, bufopts)
end

-- different language servers
-- rust
lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- lua
lspconfig.sumneko_lua.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        -- used Lua version
        version = "LuaJIT",
      },
      completion = {
        callSnipper = "Replace",
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { "vim" },
      },
    },
  },
})

-- deno / ts
lspconfig.denols.setup({
  on_attach = on_attach,
  init_options = {
    lint = true,
  },
})
