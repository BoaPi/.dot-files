-- import nvm-treesitter safely
local treesitter_status, configs = pcall(require, "nvim-treesitter.configs")
local treesitter_playground_status, treesitter_playground = pcall(require, "nvim-treesitter/playground")

if not treesitter_status then
  return
end

if not treesitter_playground_status then
  return
end

-- setup treesitter for all listed languages
-- and enabling highlighting
configs.setup({
  ensure_installed = {
    "bash",
    "css",
    "dockerfile",
    "gitignore",
    "go",
    "gomod",
    "gowork",
    "graphql",
    "html",
    "http",
    "javascript",
    "json",
    "lua",
    "make",
    "markdown",
    "markdown_inline",
    "query",
    "regex",
    "rust",
    "scss",
    "sql",
    "toml",
    "tsx",
    "typescript",
    "yaml",
  },
  highlight = {
    enable = true,
  },
  -- Indentation based on treesitter for the = operator
  indent = {
    enable = true,
  },
})

-- adjust highlight to capture groups
vim.api.nvim_set_hl(0, "@text.todo", {})
