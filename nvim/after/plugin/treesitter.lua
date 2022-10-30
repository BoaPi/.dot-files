-- import nvm-treesitter safely
local setup, configs = pcall(require, "nvim-treesitter.configs")

if not setup then
  return
end

-- setup treesitter for all listed languages
-- and enabling highlighting
configs.setup {
  ensure_installed = {
    "bash",
    "css",
    "dockerfile",
    "gitignore",
    "go",
    "gomod",
    "gowork",
    "html",
    "http",
    "javascript",
    "json",
    "lua",
    "make",
    "markdown",
    "markdown_inline",
    "regex",
    "rust",
    "scss",
    "sql",
    "svelte",
    "toml",
    "tsx",
    "typescript",
    "yaml"
  },
  highlight = {
    enable = true,
  }
}

