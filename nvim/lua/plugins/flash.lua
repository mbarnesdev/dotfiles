return {
	"folke/flash.nvim",
	event = "VeryLazy",
	opts = {},
	keys = {
		{
			"<leader>f",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump()
			end,
		},
	},
}
