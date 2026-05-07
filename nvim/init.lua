-- core - helper & utils & keybindings
require("core.helper")
require("core.editor")
require("core.keymap")

-- basic setup
require("plugin")

-- setup of plugins
require("plugin.lualine")
require("plugin.treesitter")
require("plugin.colors")
require("plugin.oil")
require("plugin.gitsigns")
require("plugin.mason")
require("plugin.conform")

-- setup of commands
require("config.autocmd")
require("config.lsp")

-- setup LLM setup
require("llm")
require("llm.keymap")
