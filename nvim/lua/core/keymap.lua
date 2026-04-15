-- =========================================================== --
-- general
-- =========================================================== --
vim.keymap.set("n", "<leader>jk", "<CMD>Oil<CR>", { desc = "open file explorer" })
vim.keymap.set("n", "<leader>nh", "<CMD>noh<CR>", { desc = "remove highlight from last search" })

-- =========================================================== --
-- moving lines quick actions
-- =========================================================== --
vim.keymap.set("n", "<C-j>", "<CMD>:m .+1<CR>==", { desc = "move line down by one" })
vim.keymap.set("n", "<C-k>", "<CMD>:m .-2<CR>==", { desc = "move line up by one" })
-- inoremap("<C-j>", "<ESC><CMD>:m .+1<CR>==gi") -- move line down by one
-- inoremap("<C-k>", "<ESC><CMD>:m .-2<CR>==gi") -- move line up by one
-- vnoremap("<C-j>", ":m '>+1<CR>gv=gv") -- move line down by one
-- vnoremap("<C-k>", ":m '<-2<CR>gv=gv") -- move line up by one

-- =========================================================== --
-- adjust default movements
-- =========================================================== --
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "up a page with center curser" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "down a page with center curser" })
vim.keymap.set("n", "n", "nzz", { desc = "next search result with center curser" })

-- -- =========================================================== --
-- -- telescope quick actions
-- -- =========================================================== --
-- vim.keymap.set("n", "<leader>tf", "<CMD>Telescope find_files<CR>")
-- vim.keymap.set("n", "<leader>ts", "<CMD>Telescope grep_string<CR>")
-- vim.keymap.set("n", "<leader>tg", "<CMD>Telescope live_grep<CR>")
-- vim.keymap.set("n", "<leader>tb", "<CMD>Telescope buffers<CR>")

-- -- =========================================================== --
-- -- Git quick actions
-- -- =========================================================== --
-- vim.keymap.set("n", "<leader>lg", "<CMD>LazyGit<CR>") -- open LazyGit

-- -- =========================================================== --
-- -- Undo-tree quick actions
-- -- =========================================================== --
vim.keymap.set("n", "<leader>ut", "<CMD>UndotreeShow<CR><CMD>UndotreeFocus<CR>") -- open undo-tree panel

-- -- =========================================================== --
-- -- Oil quick actions
-- -- =========================================================== --
-- noremap("-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- vim.keymap.set("n", "gd", "<CMD>Telescope lsp_definitions<CR>", { desc = "Show or go to references" })

-- -- =========================================================== --
-- -- Harpoon quick actions
-- -- =========================================================== --
-- vim.keymap.set("n", "<leader>hh", '<CMD>lua require("harpoon.ui").toggle_quick_menu()<CR>') -- open menu
-- vim.keymap.set("n", "<leader>hs", '<CMD>lua require("harpoon.mark").add_file()<CR>') -- set mark on file
-- vim.keymap.set("n", "<leader>hr", '<CMD>lua require("harpoon.mark").rm_file()<CR>') -- remove mark from file
-- vim.keymap.set("n", "<leader>hc", '<CMD>lua require("harpoon.mark").clear_all()<CR>') -- clear all marks

-- -- =========================================================== --
-- -- disable arrow keys normal, visual and operator-pending mode
-- -- =========================================================== --
-- noremap("<up>", "<nop>")
-- noremap("<right>", "<nop>")
-- noremap("<down>", "<nop>")
-- noremap("<left>", "<nop>")
