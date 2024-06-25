return {
    {
        "doums/darcula",
        config = function()
--            vim.cmd("colorscheme darcula")
        end
    },
    {
        "briones-gabriel/darcula-solid.nvim",
        dependencies = {
            "rktjmp/lush.nvim",
        },
        setup = function ()
--            vim.cmd("colorscheme darcula-solid")
        end
    },
    {
        "rebelot/kanagawa.nvim",
    },
}
