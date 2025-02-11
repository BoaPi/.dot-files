return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "VonHeikemen/lsp-zero.nvim",
    "hrsh7th/nvim-cmp", -- auto-completion
    "hrsh7th/cmp-buffer", -- source for text in buffer
    "hrsh7th/cmp-path", -- source for file system paths
    "hrsh7th/cmp-nvim-lua", -- nvim lua API
    "L3MON4D3/LuaSnip", -- snippet engine
    "saadparwaiz1/cmp_luasnip", -- for autocompletion
    "rafamadriz/friendly-snippets", -- useful snippets
    "onsails/lspkind.nvim", -- vs-code like pictograms
  },
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local lsp_init = require("lsp-zero")
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    local cmp_action = lsp_init.cmp_action()

    local lsp = lsp_init.preset({})

    -- setup LSP
    lsp.on_attach(function(_, bufnr)
      lsp.default_keymaps({ buffer = bufnr })

      vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", { buffer = bufnr })
      vim.keymap.set("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<cr>", { buffer = bufnr })
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

    -- HTML LSP
    lspconfig.html.setup({})

    -- CSS LSP
    lspconfig.cssls.setup({})

    --- Cobol LSP
    lspconfig.cobol_ls.setup({})

    -- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    -- setup auto-completion
    cmp.setup({
      sources = {
        { name = "buffer" },
        { name = "nvim_lsp" },
        { name = "nvim_lua" },
        { name = "luasnip" },
        { name = "path" },
      },
      preselect = "item",
      completion = {
        completeopt = "menu,menuone,noinsert",
      },
      window = {
        completion = { border = "rounded", scrollbar = false },
        documentation = { border = "rounded", scrollbar = false },
      }, -- configure lspkind for vs-code like pictograms in completion menu
      formatting = {
        format = lspkind.cmp_format({
          maxwidth = 50,
          ellipsis_char = "...",
        }),
      },
      mapping = {
        ["<C-f>"] = cmp_action.luasnip_jump_forward(),
        ["<C-b>"] = cmp_action.luasnip_jump_backward(),
      },
    })
  end,
}
