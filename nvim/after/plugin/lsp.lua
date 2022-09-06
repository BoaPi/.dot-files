-- setup
local lspconfig = require 'lspconfig'
local cmp = require 'cmp'
local luasnip = require 'luasnip'


-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- enable completions
local on_attach = function(_, bufnr)
  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<leader>f', vim.lsp.buf.formatting, bufopts)
end

-- different language servers
-- rust
lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
}

-- lua
lspconfig.sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      runtime = {
        -- used Lua version
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
    }
  }
}
