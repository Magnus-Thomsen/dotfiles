return {
    {
        "mfussenegger/nvim-lint",

        event = { "bufNewFile", "BufReadPost", "BufWritePost", },

        opts = {
            linters_by_ft = {

            },
        },


        config = function(_, opts)
            local lint = require("lint")
            lint.linters_by_ft = opts.linters_by_ft

            vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave", "BufReadPost" }, {
                callback = function()
                    require("lint").try_lint()
                end,
            })
        end,

    },
}
