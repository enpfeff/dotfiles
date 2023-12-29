return {
	"ThePrimeagen/harpoon",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = true,
	keys = {
		{ "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file with harpoon" },
		{ "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Go to next harpoon mark" },
		{ "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Go to previous harpoon mark" },
		{ "<leader>hl", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks" },
		{ "<A-j>", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Show harpoon 1" },
		{ "<A-k>", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Show harpoon 2" },
		{ "<A-l>", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Show harpoon 3" },
		{ "<A-;>", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Show harpoon 4" },
	},
}
