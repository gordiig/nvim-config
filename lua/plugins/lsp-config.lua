return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    -- Bash
                    "bashls",
                    -- 'pkgbuild_langage_server',
                    -- C / C++
                    "clangd",
                    -- C#,
                    -- 'csharp_ls',
                    "omnisharp_mono",
                    "omnisharp",
                    -- CMake
                    "cmake",
                    "neocmake",
                    -- CSS
                    "cssls",
                    "cssmodules_ls",
                    "css_variables",
                    "unocss",
                    -- Docker
                    "dockerls",
                    -- Go
                    "golangci_lint_ls",
                    "gopls",
                    -- HTML/HTMX
                    "html",
                    "htmx",
                    -- Haskell
                    -- 'hls',
                    -- JSON
                    "jsonls",
                    "biome",
                    -- Java
                    "jdtls",
                    -- 'java_language_server',
                    -- JS
                    "quick_lint_js",
                    "vtsls",
                    "biome",
                    -- Jinja
                    "jinja_lsp",
                    -- LaTeX
                    "ltex",
                    "texlab",
                    -- Lua
                    "lua_ls",
                    -- Markdown
                    "markdown_oxide",
                    "marksman",
                    "prosemd_lsp",
                    "remark_ls",
                    "vale_ls",
                    "zk",
                    -- Nginx
                    -- 'nginx_language_server',
                    -- Python
                    "jedi_language_server",
                    "pyre",
                    "pyright",
                    "pylyzer",
                    "sourcery",
                    "pylsp",
                    "ruff",
                    "ruff_lsp",
                    -- SQL
                    "sqlls",
                    "sqls",
                    -- Sphinx
                    -- 'esbonito',
                    -- TOML
                    "taplo",
                    -- TS
                    "biome",
                    "tsserver",
                    "vtsls",
                    -- Vue
                    "volar",
                    "vuels",
                    -- XML
                    "lemminx",
                    -- Yaml
                    "gitlab_ci_ls",
                    "hydra_lsp",
                    "yamlls",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.pyright.setup({
                capabilities = capabilities,
            })
            lspconfig.ruff.setup({
                capabilities = capabilities,
            })
            lspconfig.ruff_lsp.setup({
                capabilities = capabilities,
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
