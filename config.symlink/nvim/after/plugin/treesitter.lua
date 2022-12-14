local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
    ensure_installed = "all",
    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
