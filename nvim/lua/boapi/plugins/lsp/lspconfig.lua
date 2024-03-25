return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "VonHeikemen/lsp-zero.nvim",
  },
  config = function()
    local lspconfig = require("lspconfig")

    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local lsp_init = require("lsp-zero")

    local lsp = lsp_init.preset({})

    -- setup
    lsp.on_attach(function(_, bufnr)
      lsp.default_keymaps({ buffer = bufnr })
    end)
    lsp.extend_cmp()
    lsp.capabilities = cmp_nvim_lsp.default_capabilities()

    lsp.set_sign_icons({
      error = "✘",
      warn = "▲",
      hint = "⚑",
      info = "»",
    })

    -- lua LSP
    lspconfig.lua_ls.setup({})

    -- Go LSP
    lspconfig.gopls.setup({})

    -- Templ LSP
    lspconfig.templ.setup({})
  end,
}
