-- Treesitter
-- https://github.com/nvim-treesitter/nvim-treesitter

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
    main = 'nvim-treesitter.configs',
	cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
	lazy = vim.fn.argc(-1) == 0, -- load treesitter early when opening a file from the cmdline
	opts = {
		highlight = { enable = true, },
		indent = { enable = true },
		auto_install = true,
		ensure_installed = {
			"bash",
			"json",
			"jsonc",
			"lua",
			"markdown",
			"python",
			"rust",
			"regex",
			"toml",
			"sql",
			"toml",
			"typescript",
			"xml",
			"yaml",
			"git_config",
			"git_rebase",
			"gitattributes",
			"gitcommit",
			"gitignore",
		},
	},
}
