-- import catppuccin safely
local setup, catppuccin = pcall(require, "catppuccin")

-- set cursorline but remove the complete line highlight
-- only line number
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- setup theme catppuccin
catppuccin.setup({
	flavour = "mocha"
})
vim.api.nvim_command("colorscheme catppuccin")
