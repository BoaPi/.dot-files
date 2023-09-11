-- import packages plugin safely
local neodev_status, neodev = pcall(require, "neodev")
if not neodev_status then
  return
end
neodev.setup({})

local lsp_status, lsp_init = pcall(require, "lsp-zero")
if not lsp_status then
  return
end
local lsp = lsp_init.preset({})
local cmp_action = lsp.cmp_action()

local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
  return
end

local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
  return
end

local stylua_status, stylua = pcall(require, "stylua")
if not stylua_status then
  return
end

-- setup
lsp.on_attach(function(_, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
end)
lsp.extend_cmp()

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
  sources = {
    { name = "buffer" },
    { name = "nvim_lsp" },
    { name = "nvim_lua" },
    { name = "luasnip" },
  },
  mapping = {
    ["<C-f>"] = cmp_action.luasnip_jump_forward(),
    ["<C-b>"] = cmp_action.luasnip_jump_backward(),
  },
  preselect = "item",
  completion = {
    completeopt = "menu,menuone,noinsert",
  },
})

lsp.set_sign_icons({
  error = "✘",
  warn = "▲",
  hint = "⚑",
  info = "»",
})

mason.setup({})
mason_lspconfig.setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = {
    "cssls",
    "denols",
    "eslint",
    "html",
    "jsonls",
    "lua_ls",
    "gopls",
    "stylelint_lsp",
    "svelte",
    "tailwindcss",
    "tsserver",
  },
  automatic_installation = true,
  handlers = {
    lsp.default_setup,
    lua_ls = function()
      lspconfig.lua_ls.setup(lsp.nvim_lua_ls({
        on_attach = function()
          vim.keymap.set("n", "<leader>f", function()
            stylua.format()
          end)
        end,
      }))
    end,
    svelte = function()
      lspconfig.svelte.setup({
        on_attach = function()
          vim.keymap.set("n", "<leader>f", function()
            vim.lsp.buf.format()
          end)
        end,
      })
    end,
  },
})

mason_null_ls.setup({
  -- list of formatters & linters for mason to install
  ensure_installed = {
    "eslint_d", -- for all projects using eslint
    "prettierd", -- for all project using not eslint
    "stylua", -- lua formatter
    "stylelint", -- css linter
  },
  -- auto-install configured formatters & linters (with null-ls)
  automatic_installation = true,
})
