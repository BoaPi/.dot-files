return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    opt = true,
  },
  config = function()
    local catppuccin = require("catppuccin")

    catppuccin.setup({
      flavour = "mocha",
    })

    vim.api.nvim_command("colorscheme catppuccin")

    -- set cursorline but remove the complete line highlight
    -- only line number
    vim.opt.cursorline = true
    vim.opt.cursorlineopt = "number"
  end,
}
