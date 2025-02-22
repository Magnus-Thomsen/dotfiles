return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter").setup({
            sync_install = false,
            auto_install = true,
            ignore_install = {"latex"},
            highlight = {
                enable = true,
                disable = {"latex"},
            },
            indent = { enable = false },
        })
    end
}
