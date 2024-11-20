return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "jdtls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			lspconfig.jdtls.setup({
				capabilities = capabilities
			})

			-- KEYMAPS
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
			vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
			vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
			vim.keymap.set('n', '<space>f', function()
				vim.lsp.buf.format { async = true }
			end, {})
		end,
	}
}
