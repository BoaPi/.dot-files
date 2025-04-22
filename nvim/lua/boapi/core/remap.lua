local nnoremap = require("boapi.core.keymap").nnoremap
local inoremap = require("boapi.core.keymap").inoremap
local vnoremap = require("boapi.core.keymap").vnoremap
local noremap = require("boapi.core.keymap").noremap

-- =========================================================== --
-- general
-- =========================================================== --
nnoremap("<leader>jk", "<CMD>Oil<CR>") -- quick access for oil, as replacement for netrw
nnoremap("<leader>nh", "<CMD>noh<CR>") -- remove highlighting from last search

-- =========================================================== --
-- moving lines quick actions
-- =========================================================== --
nnoremap("<C-j>", "<CMD>:m .+1<CR>==") -- move line down by one
nnoremap("<C-k>", "<CMD>:m .-2<CR>==") -- move line up by one
inoremap("<C-j>", "<ESC><CMD>:m .+1<CR>==gi") -- move line down by one
inoremap("<C-k>", "<ESC><CMD>:m .-2<CR>==gi") -- move line up by one
vnoremap("<C-j>", ":m '>+1<CR>gv=gv") -- move line down by one
vnoremap("<C-k>", ":m '<-2<CR>gv=gv") -- move line up by one

-- =========================================================== --
-- adjust default movements
-- =========================================================== --
nnoremap("<C-u>", "<C-u>zz") -- move line down by one
nnoremap("<C-d>", "<C-d>zz") -- move line up by one
nnoremap("n", "nzz") -- move line down by one

-- =========================================================== --
-- telescope quick actions
-- =========================================================== --
nnoremap("<leader>tf", "<CMD>Telescope find_files<CR>")
nnoremap("<leader>ts", "<CMD>Telescope grep_string<CR>")
nnoremap("<leader>tg", "<CMD>Telescope live_grep<CR>")
nnoremap("<leader>tb", "<CMD>Telescope buffers<CR>")

-- =========================================================== --
-- Git quick actions
-- =========================================================== --
nnoremap("<leader>lg", "<CMD>LazyGit<CR>") -- open LazyGit

-- =========================================================== --
-- Undo-tree quick actions
-- =========================================================== --
nnoremap("<leader>ut", "<CMD>UndotreeShow<CR><CMD>UndotreeFocus<CR>") -- open undo-tree panel

-- =========================================================== --
-- Oil quick actions
-- =========================================================== --
noremap("-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
nnoremap("gd", "<CMD>Telescope lsp_definitions<CR>", { desc = "Show or go to references" })

-- =========================================================== --
-- Harpoon quick actions
-- =========================================================== --
nnoremap("<leader>hh", '<CMD>lua require("harpoon.ui").toggle_quick_menu()<CR>') -- open menu
nnoremap("<leader>hs", '<CMD>lua require("harpoon.mark").add_file()<CR>') -- set mark on file
nnoremap("<leader>hr", '<CMD>lua require("harpoon.mark").rm_file()<CR>') -- remove mark from file
nnoremap("<leader>hc", '<CMD>lua require("harpoon.mark").clear_all()<CR>') -- clear all marks

-- =========================================================== --
-- disable arrow keys normal, visual and operator-pending mode
-- =========================================================== --
noremap("<up>", "<nop>")
noremap("<right>", "<nop>")
noremap("<down>", "<nop>")
noremap("<left>", "<nop>")
