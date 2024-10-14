return {
	"vague2k/vague.nvim",
	config = function()
		require("vague").setup {}

		vim.cmd.colorscheme "vague"

		vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "NONE" })
	end,
}
