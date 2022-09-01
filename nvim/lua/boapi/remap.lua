local nnoremap = require("boapi.keymap").nnoremap
local noremap = require("boapi.keymap").noremap
local telescope = require("telescope.builtin")

-- quick access of netrw
nnoremap("<leader>jk", "<CMD>Ex<CR>")

-- telescope quickactions
nnoremap("<leader>ff", "<CMD>Telescope find_files<CR>")
nnoremap("<leader>gf", "<CMD>Telescope git_files<CR>")
nnoremap("<leader>gc", "<CMD>Telescope git_commits<CR>")
nnoremap("<leader>ts", "<CMD>Telescope treesitter<CR>")

-- Neogit quick actions
nnoremap("<leaderng", "<CMD>Neogit<CR>")

-- disable arrow keys normal, visual and operator-pending mode
noremap("<up>", "<nop>")
noremap("<right>", "<nop>")
noremap("<down>", "<nop>")
noremap("<left>", "<nop>")
