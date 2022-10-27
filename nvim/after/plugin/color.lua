-- dark background 
vim.opt.background = "dark"
vim.g.catppuccin_flavour = "mocha"

-- set cursorline but remove the complete line highlight
-- only line number
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- color theme catppuccin
require("catppuccin").setup()
vim.cmd("colorscheme catppuccin")
