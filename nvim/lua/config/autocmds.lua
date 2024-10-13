vim.api.nvim_create_autocmd("textyankpost", {
	group = vim.api.nvim_create_augroup("mbarnesdev-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank { timeout = 50 }
	end,
})
