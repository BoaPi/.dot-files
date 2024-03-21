return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
      -- import nvim-treesitter plugin
      local treesitter = require("nvim-treesitter.configs")

      -- configure treesitter
      treesitter.setup({ -- enable syntax highlighting
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        -- enable indentation
        indent = { enable = true },
        query_linter = {
          enable = true,
          use_virtual_text = true,
          lint_events = { "BufWrite", "CursorHold" },
        },
        autotag = {
          enable = true,
        },
        sync_install = false,
        auto_install = true,
        -- ensure these language parsers are installed
        ensure_installed = {
          "bash",
          "css",
          "dockerfile",
          "gitignore",
          "html",
          "http",
          "javascript",
          "json",
          "jsonc",
          "lua",
          "make",
          "markdown",
          "markdown_inline",
          "go",
          "query",
          "regex",
          "scss",
          "sql",
          "svelte",
          "templ",
          "toml",
          "tsx",
          "typescript",
          "yaml",
        },
      })
    end,
  },
}
