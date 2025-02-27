return {
    "nvim-treesitter/nvim-treesitter",

    build = ":TSUpdate",

    opts = {
        highlight = {enable = true, disable = {"latex"}},
        indent = {enable = true},
        sync_install = {enable = false},
        auto_install = {enable = true},
        ensure_installed = {
            "css",
            "comment",
            "html",
            "lua",
            "markdown",
            "markdown_inline",
            "python",
            "vim",
            "vimdoc",
        },
    },

    config = function(_,opts)
        require("nvim-treesitter.configs").setup(opts)
    end,
}
