return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")

    lualine.setup({
      options = {
        component_separators = { left = "", right = "|" }, -- separator symbols
        section_separators = { left = "", right = "" }, -- separator symbols between sections
      },
      -- used sections in top line / tabline
      tabline = {
        lualine_a = { { "tabs", mode = 2 } },
      },
      -- used sections in bottom statusline
      sections = {
        lualine_a = { "mode" }, -- currnent mode of nvim
        lualine_b = { "branch", "diff", "diagnostics" }, -- current branch, if diff is present and diagnostics
        lualine_c = { "filename" }, -- current filename
        lualine_x = { "encoding", "fileformat", "filetype" }, -- encoding of file, fileformat and type of file
        lualine_z = { "location" }, -- current position in document
      },
    })
  end,
}
