-- setup
local lspconfig = require'lspconfig'

-- enable completions
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end

-- different language servers
-- rust
lspconfig.rust_analyzer.setup{
  on_attach = on_attach,
}
