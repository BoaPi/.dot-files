local configs = require'nvim-treesitter.configs'
configs.setup {
  ensure_installed = {
    "bash",
    "css",
    "go",
    "html",
    "javascript",
    "json",
    "lua",
    "make",
    "markdown",
    "regex",
    "rust",
    "scss",
    "svelte",
    "toml",
    "yaml"
  },
  highlight = {
    enable = true,
  }
}