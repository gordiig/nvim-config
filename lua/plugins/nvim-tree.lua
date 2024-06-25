return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-tree.lua",
    },
    config = function()
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = false,
            },
        })

        vim.keymap.set("n", "<C-n>", ":NvimTreeOpen<CR>", {})
    end
}
