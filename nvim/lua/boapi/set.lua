-- key mappings
vim.g.mapleader = " " -- new prefix key

-- line number options
vim.opt.nu = true -- show current line number where the cursor is
vim.opt.relativenumber = true -- adding relativ line numbers to where the cursor is

-- cursor options
vim.opt.guicursor = "" -- set cursor to be fat

-- tab options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- line options
vim.opt.wrap = false -- prevent line wrapping
vim.opt.colorcolumn = "80" -- highlight column 80 for not to long lines
vim.opt.signcolumn = "yes:2"

-- window options
vim.opt.laststatus = 3 -- set status bar to only appear once for all split views
vim.opt.splitright = true

-- mix options
vim.opt.scrolloff = 20 -- set minimum number of lines, where scrolling starts

-- netrw options
vim.g.netrw_liststyle = 3 -- set list style to tree
