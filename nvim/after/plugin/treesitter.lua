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
  query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = { "BufWrite", "CursorHold" },
  },
})

-- adjust highlight to capture groups
--vim.api.nvim_set_hl(0, "@text.todo", {})

treesitter_playground.setup({
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = "o",
      toggle_hl_groups = "i",
      toggle_injected_languages = "t",
      toggle_anonymous_nodes = "a",
      toggle_language_display = "I",
      focus_language = "f",
      unfocus_language = "F",
      update = "R",
      goto_node = "<cr>",
      show_help = "?",
    },
  },
})
