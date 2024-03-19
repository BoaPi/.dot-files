local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "boapi.plugins" }, { import = "boapi.plugins.lsp" } }, {
  install = {
    colorscheme = { "catppuccin" },
  },
  change_detection = {
    enabled = true,
    notify = false,
  },
})

vim.opt.rtp:prepend(lazypath)

--local plugins = {
--  "b0o/schemastore.nvim", -- JSON schema
--
--
--
--  "folke/neodev.nvim",
--
--  "ThePrimeagen/harpoon", -- to mark some files
--
