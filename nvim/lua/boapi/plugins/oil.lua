return {
  "stevearc/oil.nvim",
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local oil = require("oil")

    oil.setup({
      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
      },
    })
  end,
}
