return {
	{
		"EdenEast/nightfox.nvim",
		config = function()
			vim.cmd("colorscheme carbonfox")
		end
	},

	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require("lualine").setup({
				options = { theme = 'carbonfox' }
			})
		end
	}
}
