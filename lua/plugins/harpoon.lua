return {
	"ThePrimeagen/harpoon",
	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		vim.keymap.set("n", "<leader>a", mark.add_file)
		vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)

		vim.keymap.set("n", "<leader>fh", function() ui.nav_file(1) end)
		vim.keymap.set("n", "<leader>fj", function() ui.nav_file(2) end)
		vim.keymap.set("n", "<leader>fk", function() ui.nav_file(3) end)
		vim.keymap.set("n", "<leader>fl", function() ui.nav_file(4) end)
	end
}
