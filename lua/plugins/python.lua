return {
    {
        'linux-cultist/venv-selector.nvim',
        branch = "regexp",
        dependencies = {
            "neovim/nvim-lspconfig",
            "mfussenegger/nvim-dap",
            "mfussenegger/nvim-dap-python",
            "nvim-telescope/telescope.nvim",
        },
        opts = {
            name = 'venv',
        },
        keys = {
            { '<leader>vs', '<CMD>VenvSelect<CR>' },
        },
        config = function()
            -- This function gets called by the plugin when a new result from fd is received
            -- You can change the filename displayed here to what you like.
            -- Here in the example for linux/mac we replace the home directory with '~' and remove the /bin/python part.
            local function shorter_name(filename)
                return filename:gsub(os.getenv("HOME"), "~"):gsub("/bin/python", "")
            end

            require("venv-selector").setup({
                settings = {
                    options = {
                        on_telescope_result_callback = shorter_name,
                    },
                }
            })
        end
    },
    {
        "mfussenegger/nvim-dap-python",
        config = function()
            require("dap-python").setup("python")
            require("dap-python").test_runner = "pytest"
        end
    },
}
