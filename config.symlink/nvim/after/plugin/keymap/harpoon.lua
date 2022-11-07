local nnoremap = require("laborda.keymap").nnoremap

local silent = { silent = true }

-- Terminal commands
-- This just means I can crush, with opposite hand, the 4 terminal positions
--
nnoremap("<leader>a", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<leader>tqm", function() require("harpoon.ui").toggle_quick_menu() end, silent)

nnoremap("<leader>1", function() require("harpoon.ui").nav_file(1) end, silent)
nnoremap("<leader>2", function() require("harpoon.ui").nav_file(2) end, silent)
nnoremap("<leader>3", function() require("harpoon.ui").nav_file(3) end, silent)
nnoremap("<leader>4", function() require("harpoon.ui").nav_file(4) end, silent)
