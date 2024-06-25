return {
    {
        "voldikss/vim-floaterm",
        config = function()
            vim.keymap.set("n", "<leader>tn", ":FloatermNew<CR>", {})
            vim.keymap.set("n", "<leader>tt", ":FloatermToggle<CR>", {})
            vim.keymap.set("n", "<leader>tg", ":FloatermNew lazygit<CR>", {})
        end
    },
}
