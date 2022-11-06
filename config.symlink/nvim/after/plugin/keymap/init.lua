local Remap = require("laborda.keymap")
local nnoremap = Remap.nnoremap
local xnoremap = Remap.xnoremap
local inoremap = Remap.inoremap

nnoremap("<leader>qw", ":Ex<CR>")

inoremap("<leader>jk", "<esc>")

-- greatest remap ever
xnoremap("<leader>p", "\"_dP")

nnoremap("<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
