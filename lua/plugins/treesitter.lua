return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
            autoinstall = true,
			ensure_installed = {
				"lua",
				"python",
				"javascript",
				"html",
				"c",
				"cpp",
				"rust",
				"typescript",
				"bash",
				"c_sharp",
				"gitignore",
				"gitattributes",
				"git_config",
				"git_rebase",
				"go",
				"gomod",
				"http",
				"java",
				"json",
				"make",
				"markdown",
				"markdown_inline",
				"swift",
				"xml",
				"yaml",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
