-- import neodev plugin safely
local neodev_status, neodev = pcall(require, "neodev")
if not neodev_status then
  return
end
neodev.setup({})

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
local client_capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities =
  vim.tbl_deep_extend("force", client_capabilities, cmp_nvim_lsp.default_capabilities(client_capabilities))

-- NOTE: on_attach()
-- will enable listed key mappings only when an lsp is attached
-- to the buffer
local on_attach = function(_, bufnr)
  -- NOTE: plugins like rust-tools & mason
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
lspconfig.lua_ls.setup({
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
      workspace = {
        checkThirdParty = false,
      },
    },
  },
})

--JSON
lspconfig.jsonls.setup({
  settings = {
    json = {
      schemas = require("schemastore").json.schemas(),
      validate = { enable = true },
    },
  },
})

-- deno / typescript lsps
-- deno
lspconfig.denols.setup({
  on_attach = on_attach,
  init_options = {
    lint = true,
  },
  single_file_support = false,
})
-- typescript
lspconfig.tsserver.setup({})

-- cssls
lspconfig.cssls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
