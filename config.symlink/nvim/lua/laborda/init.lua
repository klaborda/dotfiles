require("laborda.set")
require("laborda.keymap")
require("laborda.packer")
require("laborda.neogit")
require("laborda.null-ls")


local augroup = vim.api.nvim_create_augroup
LabordaGroup = augroup('Laborda', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({ "BufEnter", "BufWinEnter", "TabEnter" }, {
    group = LabordaGroup,
    pattern = "*.rs",
    callback = function()
        require("lsp_extensions").inlay_hints {}
    end
})

autocmd({ "BufWritePre" }, {
    group = LabordaGroup,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
