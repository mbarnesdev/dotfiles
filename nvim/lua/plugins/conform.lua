return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup {
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofmt" },
				html = { "prettierd" },
				json = { "prettierd" },
				javascript = { "prettierd", stop_after_first = true },
				javascriptreact = { "prettierd", stop_after_first = true },
				typescript = { "prettierd", stop_after_first = true },
				typescriptreact = { "prettierd", stop_after_first = true },
			},
			format_on_save = {
				timeout_ms = 500,
			},
		}

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format { bufnr = args.buf }
			end,
		})
	end,
}
