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
  "b0o/schemastore.nvim", -- JSON schema

  -- lsp setup, auto completions, formatting and linting
  -- =========================================================== --
  { "VonHeikemen/lsp-zero.nvim", branch = "dev-v3" },

  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "stevearc/conform.nvim",
  "mfussenegger/nvim-lint",

  -- LSP Support
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp" },
    },
  },
  "folke/neodev.nvim",

  -- Autocompletion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "L3MON4D3/LuaSnip" },
    },
  },
  "hrsh7th/cmp-nvim-lua",
  "hrsh7th/cmp-buffer",
  "saadparwaiz1/cmp_luasnip",
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    dependencies = { "rafamadriz/friendly-snippets" },
  },

  -- formatting
  "wesleimp/stylua.nvim",

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
