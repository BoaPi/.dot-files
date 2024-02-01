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

local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
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
