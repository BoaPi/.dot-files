-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- ensure that packer is installed
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

-- Only required if you have packer configured as `opt`
vim.cmd('packadd packer.nvim')

local packer = require 'packer'
local util = require 'packer.util'

packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

--- startup and add configure plugins
packer.startup(function()
  local use = use

  -- =========================================================== --
  -- essential plugins
  -- =========================================================== --
  use 'wbthomason/packer.nvim' -- to manage packer by itself
  use 'nvim-lua/plenary.nvim' -- basic plugin for floating windows
  -- TODO: enable plugin  use("kylechui/nvim-surround") -- add, delete, change surroundings

  -- =========================================================== --
  -- code highlighting
  -- =========================================================== --
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'sheerun/vim-polyglot'
  use 'folke/todo-comments.nvim' -- colorful TODO: comments

  -- =========================================================== --
  -- lsp setup & auto completions
  -- =========================================================== --
  use 'hrsh7th/nvim-cmp' -- auto completion plugin

  -- managing & installing lsp servers, linters & formatters
  use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
  use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

  -- formatting & linting
  use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
  use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- configuring lsp servers
  use 'neovim/nvim-lspconfig' -- easily configure language servers
  use 'hrsh7th/cmp-nvim-lsp' -- for autocompletion
  use 'folke/neodev.nvim' -- lsp for nvim lua API

  -- auto closing
  use 'windwp/nvim-autopairs' -- autoclose parens, brackets, quotes, etc...
  use {
    'windwp/nvim-ts-autotag',
    after = 'nvim-treesitter'
  } -- autoclose tags

  -- =========================================================== --
  -- file navigation
  -- =========================================================== --
  use 'nvim-telescope/telescope.nvim'
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }
  use 'ThePrimeagen/harpoon' -- to mark some files

  -- =========================================================== --
  -- git related
  -- =========================================================== --
  use 'kdheepak/lazygit.nvim' -- lazy git implementation in nvim
  use 'lewis6991/gitsigns.nvim' -- show line modifications on left hand side

  -- =========================================================== --
  -- visual things
  -- =========================================================== --
  -- color theme
  use {
    'catppuccin/nvim',
    as = 'catppuccin',
  }
  -- icons
  use {
    'kyazdani42/nvim-web-devicons',
    opt = true
  }
  use 'nvim-lualine/lualine.nvim' -- statusline
  use 'christoomey/vim-tmux-navigator' -- navigating between splitviews of tmux and vim
end
)
