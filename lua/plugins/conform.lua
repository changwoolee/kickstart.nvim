return {
	"stevearc/conform.nvim",
	cmd = "ConformInfo",
	keys = {
		{
			"f",
			function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			desc = "Format buffer",
		},
	},
	opts = {
		formatters_by_ft = {
			markdown = { "prettierd" },
			python = { "black", "ruff" },
			javascript = { "prettierd" },
			yaml = { "prettierd" },
			toml = { "taplo" },
		},
	},
}
