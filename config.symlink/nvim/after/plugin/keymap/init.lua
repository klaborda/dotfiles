local Remap = require("laborda.keymap")
local nnoremap = Remap.nnoremap
local xnoremap = Remap.xnoremap
local inoremap = Remap.inoremap

nnoremap("<leader>qw", ":Ex<CR>")

inoremap("<leader>jj", "<esc>")

-- keyboard training
nnoremap("<up>", "<nop>")
nnoremap("<down>", "<nop>")
nnoremap("<left>", "<nop>")
nnoremap("<right>", "<nop>")
inoremap("<up>", "<nop>")
inoremap("<down>", "<nop>")
inoremap("<left>", "<nop>")
inoremap("<right>", "<nop>")

-- open new window and switch to it
nnoremap("<leader>w", "<C-w>v<C-w>l")
-- quick navigate around windows
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- greatest remap ever
xnoremap("<leader>p", "\"_dP")

-- make executable
nnoremap("<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
