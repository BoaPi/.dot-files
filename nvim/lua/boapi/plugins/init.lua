return {
  "nvim-lua/plenary.nvim", -- lua functions that many plugins use
  "kdheepak/lazygit.nvim", -- lazy git implementation in nvim
  "mbbill/undotree", -- show undo tree on the site
  -- TODO: enable plugin  use("kylechui/nvim-surround") -- add, delete, change surroundings

  {
    "BoaPi/task-toggler.nvim",
    config = true,
    ft = "markdown",
    dependencies = "nvim-treesitter",
  },
}
