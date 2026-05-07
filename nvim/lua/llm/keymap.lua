local prompt = require("llm.prompt")

-- -- =========================================================== --
-- -- LLM related keybindings
-- -- =========================================================== --
vim.keymap.set("x", "<leader>ai", prompt.complete)
vim.keymap.set("x", "<leader>ar", prompt.rewrite)
