return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup {
			default_file_explorer = true,
			columns = {
				"icon",
			},
			use_default_keymaps = false,
			keymaps = {
				["<CR>"] = "actions.select",
				["-"] = "actions.parent",
			},
			skip_confirm_for_simple_edits = true,
			view_options = {
				show_hidden = true,
			},
		}

		vim.keymap.set("n", "<leader>pv", "<cmd>Oil<CR>")
		vim.keymap.set("n", "<leader>-", require("oil").toggle_float)
	end,
}
