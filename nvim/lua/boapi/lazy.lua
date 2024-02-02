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
})

vim.opt.rtp:prepend(lazypath)

--local plugins = {
--
--  -- own plugins from github
--  {
--    "BoaPi/task-toggler.nvim",
--    config = true,
--    ft = "markdown",
--    dependencies = "nvim-treesitter",
--  },
--  "nvim-treesitter/playground", -- playground for treesitter to see tokens
--  "sheerun/vim-polyglot", -- vim API
--  "b0o/schemastore.nvim", -- JSON schema
--
--
--
--  "folke/neodev.nvim",
--
--  "ThePrimeagen/harpoon", -- to mark some files
--
