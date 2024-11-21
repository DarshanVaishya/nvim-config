return {
	{
		"kvrohit/rasmus.nvim",
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme rasmus]])
		end,
	},
	-- {
	-- 'maxmx03/solarized.nvim',
	-- lazy = false,
	-- priority = 1000,
	-- opts = {},
	-- config = function(_, opts)
	-- vim.o.termguicolors = true
	-- vim.o.background = 'dark'
	-- require('solarized').setup(opts)
	-- vim.cmd.colorscheme 'solarized'
	-- end,
	-- },
	-- {
	-- "owickstrom/vim-colors-paramount",
	-- priority = 1000,
	-- config = function()
	-- vim.o.background = 'dark'
	-- vim.cmd.colorscheme 'paramount'
	-- end,
	-- },
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require("lualine").setup({
				options = { theme = "auto" }
			})
		end
	}
	-- }
}
