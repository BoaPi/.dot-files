-- import mason
local mason = require("mason")

-- import mason-lspconfig
local mason_lspconfig = require("mason-lspconfig")

mason.setup({})

mason_lspconfig.setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = {
    "cssls",
    "denols",
    "emmet_ls",
    "eslint",
    "eslint_d",
    "gopls",
    "html",
    "jsonls",
    "lua_ls",
    "prettierd",
    "stylua",
    "svelte",
    "tailwindcss",
    "tsserver",
  },
  automatic_installation = true,
})
