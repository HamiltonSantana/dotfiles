local nnoremap = require("hamilton.keymap").nnoremap
local vnoremap = require("hamilton.keymap").vnoremap

-- Normal Mode
nnoremap("<Space>", "<NOP>")
nnoremap("<leader>pv", "<cmd>:Ex<cr>")
nnoremap("<C-left>", "<cmd>:vertical resize -10<cr>")
nnoremap("<C-right>", "<cmd>:vertical resize +10<cr>")
nnoremap("<C-up>", "<cmd>: resize -10<cr>")
nnoremap("<C-down>", "<cmd>: resize +10<cr>")

local builtin = require("telescope.builtin")
nnoremap("<C-p>" , builtin.find_files, {})
nnoremap("<leader>fg" , builtin.live_grep, {})
nnoremap("<leader>fb" , builtin.buffers, {})
nnoremap("<leader>fh" , builtin.help_tags, {})

-- Visual Mode
vnoremap("<", "<gv")
vnoremap(">", ">gv")
