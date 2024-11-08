
local nnoremap = require("hamilton.keymap").nnoremap
local vnoremap = require("hamilton.keymap").vnoremap

-- Normal Mode
nnoremap("<Space>", "<NOP>")
nnoremap("<leader>pv", "<cmd>:Ex<cr>")
nnoremap("<C-left>", "<cmd>:vertical resize -10<cr>")
nnoremap("<C-right>", "<cmd>:vertical resize +10<cr>")
nnoremap("<C-up>", "<cmd>: resize -10<cr>")
nnoremap("<C-down>", "<cmd>: resize +10<cr>")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-g>", "<NOP>")
nnoremap("<C-g>", "<cmd>:G<cr>")

-- Visual Mode
vnoremap("<", "<gv")
vnoremap(">", ">gv")

