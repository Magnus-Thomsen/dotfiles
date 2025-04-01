return{
    {
        "lervag/vimtex",
        lazy = false,     -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
        config = function()
            -- VimTeX configuration goes here, e.g.
            vim.g.vimtex_view_method = "skim"
            vim.g.vimtex_syntax_conceal_disable = 1
            vim.g.conceallevel=0
            vim.g.vimtex_compiler_latexmk = {
                options = {
                    '-shell-escape',
                    '-interaction=nonstopmode',
                    '-synctex=1'
                }
            }
        end,
        ft = { "tex", "bib" }, -- Load VimTeX only for LaTeX and BibTeX files
    }
}
