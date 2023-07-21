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

local plugins = {

  -- own plugins from github
  {
    "BoaPi/task-toggler.nvim",
    config = true,
    ft = "markdown",
    dependencies = "nvim-treesitter",
  },

  -- essential plugins
  -- =========================================================== --
  "nvim-lua/plenary.nvim", -- basic plugin for floating windows
  -- TODO: enable plugin  use("kylechui/nvim-surround") -- add, delete, change surroundings

  -- code highlighting
  -- =========================================================== --
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  },
  "nvim-treesitter/playground", -- playground for treesitter to see tokens
  "sheerun/vim-polyglot", -- vim API
  "folke/todo-comments.nvim", -- colorful TODO: comments
  "b0o/schemastore.nvim", -- JSON schema

  -- lsp setup & auto completions
  -- =========================================================== --
  "hrsh7th/nvim-cmp", -- auto completion plugin

  -- managing & installing lsp servers, linters & formatters
  "williamboman/mason.nvim", -- in charge of managing lsp servers, linters & formatters
  "williamboman/mason-lspconfig.nvim", -- bridges gap b/w mason & lspconfig
  "jayp0521/mason-null-ls.nvim", -- enables managing of linter & formatters in mason

  -- formatting & linting
  "jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters

  -- snippets
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",

  -- configuring lsp servers
  "neovim/nvim-lspconfig", -- easily configure language servers
  "hrsh7th/cmp-nvim-lsp", -- for autocompletion
  "folke/neodev.nvim", -- lsp for nvim lua API
  -- TODO: use 'simrat39/rust-tools.nvim' -- more complete rust tooling
  -- https://sharksforarms.dev/posts/neovim-rust/

  -- auto closing
  "windwp/nvim-autopairs", -- autoclose parens, brackets, quotes, etc...
  {
    "windwp/nvim-ts-autotag",
    after = "nvim-treesitter",
  }, -- autoclose tags

  -- file navigation
  -- =========================================================== --
  "nvim-telescope/telescope.nvim",
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make",
  },
  "ThePrimeagen/harpoon", -- to mark some files

  -- git related
  -- =========================================================== --
  "kdheepak/lazygit.nvim", -- lazy git implementation in nvim
  "lewis6991/gitsigns.nvim", -- show line modifications on left hand side
  "mbbill/undotree", -- show undo tree on the site

  -- visual things
  -- =========================================================== --
  {
    "catppuccin/nvim",
    as = "catppuccin",
  }, -- color theme
  {
    "kyazdani42/nvim-web-devicons",
    opt = true,
  }, -- icons
  "nvim-lualine/lualine.nvim", -- statusline
}

local opts = {}

require("lazy").setup(plugins, opts)
