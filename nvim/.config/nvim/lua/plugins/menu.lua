return {
    { "nvzone/volt" , lazy = true },
    { 
        "nvzone/menu", 
        lazy = true,
        config = function()
            require("menu").setup({
                vim.keymap.set("n", "<C-t>", function()
                    require("menu").open("default")
                end, {})
            })
        end
    },
}
