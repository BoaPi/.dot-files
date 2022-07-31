local nnoremap = require("boapi.keymap").nnoremap
local noremap = require("boapi.keymap").noremap

-- quick access of netrw
nnoremap("<leader>jk", "<CMD>Ex<CR>")

-- disable arrow keys normal, visual and operator-pending mode
noremap("<up>", "<nop>")
noremap("<right>", "<nop>")
noremap("<down>", "<nop>")
noremap("<left>", "<nop>")
