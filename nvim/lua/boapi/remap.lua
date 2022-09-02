local nnoremap = require("boapi.keymap").nnoremap
local noremap = require("boapi.keymap").noremap

-- quick access of netrw
nnoremap("<leader>jk", "<CMD>Ex<CR>")

-- telescope quickactions
nnoremap("<leader>ff", "<CMD>Telescope find_files<CR>")
nnoremap("<leader>gf", "<CMD>Telescope git_files<CR>")
nnoremap("<leader>gc", "<CMD>Telescope git_commits<CR>")
nnoremap("<leader>ts", "<CMD>Telescope treesitter<CR>")
nnoremap("<leader>fb", "<CMD>Telescope file_browser<CR>")

-- Neogit quick actions
nnoremap("<leader>ng", "<CMD>Neogit<CR>")

-- disable arrow keys normal, visual and operator-pending mode
noremap("<up>", "<nop>")
noremap("<right>", "<nop>")
noremap("<down>", "<nop>")
noremap("<left>", "<nop>")
