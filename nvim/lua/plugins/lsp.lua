return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup {}
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup {
				ensure_installed = {
					"lua_ls",
				},
				automatic_installation = true,
			}
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require "lspconfig"

			local on_attach = function(_, bufnr)
				local function buf_set_keymap(...)
					vim.api.nvim_buf_set_keymap(bufnr, ...)
				end
				local function buf_set_option(...)
					vim.api.nvim_buf_set_option(bufnr, ...)
				end

				buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

				local opts = { noremap = true, silent = true }
				buf_set_keymap("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
				buf_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
				buf_set_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
			end

			lspconfig.lua_ls.setup {
				on_attach = on_attach,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			}
		end,
	},
}
