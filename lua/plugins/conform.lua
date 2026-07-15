return {
	"stevearc/conform.nvim",
	cmd = "ConformInfo",
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			desc = "Format buffer",
		},
	},
	opts = {
		notify_on_error = true,
		formatters_by_ft = {
			markdown = { "prettierd" },
			python = { "ruff", "black" },
			javascript = { "prettierd" },
			json = { "prettierd", "jq" },
			yaml = { "prettierd" },
			toml = { "taplo" },
			bash = { "shfmt" },
			sh = { "shfmt" },
		},
	},
}
