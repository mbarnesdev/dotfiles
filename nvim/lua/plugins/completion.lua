return {
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require "cmp"

			cmp.setup {
				snippet = {
					expand = function(args)
						vim.fn["vsnip#anonymous"](args.body)
					end,
				},
				mapping = {
					["<C-n>"] = cmp.mapping.select_next_item(),
					["<C-p>"] = cmp.mapping.select_prev_item(),
					["<C-y>"] = cmp.mapping.confirm { select = true },
				},
				sources = {
					{ name = "nvim_lsp" },
					{ name = "buffer" },
				},
			}
		end,
	},
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"hrsh7th/cmp-buffer",
	},
	{
		"hrsh7th/vim-vsnip",
	},
}
