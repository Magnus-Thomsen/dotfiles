return {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },

    cmd = "ConformInfo",

    keys = {
        {
            "<leader>gf",
            function()
                require("conform").format({ timeout_ms = 3000 })
            end,
            mode = { "n", "v", },
            desc = "Format Buffer",
        },
    },


    opts = {
        formatter_by_ft = {
            python = { "ruff_format" },
        },

        default_format_opts = {
            timeout_ms = 3000,
            lsp_format = "fallback",
            async = false,
        },

        format_on_save = { timeout_ms = 3000 },

    },

    config = function(_, opts)
        require("conform").setup({ opts })
    end,

}
