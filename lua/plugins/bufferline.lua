return {
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require("bufferline").setup({
                options = {
                    middle_mouse_command = "bdelete! %d",
                    separator_style = "thin",
                    hover = {
                        enabled = true,
                        delay = 200,
                        reveal = { 'close' },
                    }
                },
            })

            vim.keymap.set("n", "]b", ":BufferLineCycleNext<CR>", {})
            vim.keymap.set("n", "[b", ":BufferLineCyclePrev<CR>", {})
            vim.keymap.set("n", "}B", ":BufferLineMoveNext<CR>", {})
            vim.keymap.set("n", "{B", ":BufferLineMovePrev<CR>", {})
            vim.keymap.set("n", "<leader>bd", ":bdelete!<CR>", {})

        end
    },
}
