--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config("cssls", {
  capabilities = capabilities,
})
vim.lsp.enable("cssls")

vim.lsp.config("eslint", {
  settings = {
    experimental = { useFlatConfig = true },
  },
})
vim.lsp.enable("eslint")
vim.lsp.enable("gopls")

-- lua setup for development
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    },
  },
})
vim.lsp.enable("lua_ls")

vim.lsp.enable("oxlint")
vim.lsp.enable("ts_ls")
