return {
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            highlight = {
                keyword = "bg",
                pattern = [[.*<(KEYWORDS)( \@\w+)?:]],
            },
            search = {
                pattern = [[\b(KEYWORDS)( @\w+)?:]],
            },

        },
    },
}
