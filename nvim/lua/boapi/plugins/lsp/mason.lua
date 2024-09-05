return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")

    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({})

    mason_lspconfig.setup({
      -- Replace the language servers listed here
      -- with the ones you want to install
      ensure_installed = {
        "cssls",
        "cobol_ls",
        "denols",
        "emmet_ls",
        "eslint",
        "gopls",
        "html",
        "jsonls",
        "lua_ls",
        "tailwindcss",
        "templ",
        "tsserver",
      },
      automatic_installation = true,
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "eslint_d",
        "prettierd",
        "stylua",
      },
    })
  end,
}
