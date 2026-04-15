local catppuccin = require("catppuccin")

catppuccin.setup({
  flavour = "mocha",
})

vim.api.nvim_command("colorscheme catppuccin")

-- set cursorline but remove the complete line highlight
-- only line number
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
