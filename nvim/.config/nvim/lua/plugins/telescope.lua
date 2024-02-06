local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
			mappings = {},
			file_ignore_patterns = { "node_modules/", "dist/", ".git/" },
			vimgrep_arguments = {
				"rg",
				"--follow", -- Follow symbolic links
				"--hidden", -- Search for hidden files
				"--no-heading", -- Don't group matches by each file
				"--with-filename", -- Print the file path with the matched lines
				"--line-number", -- Show line numbers
				"--column", -- Show column numbers
				"--smart-case", -- Smart case search

				-- Exclude some patterns from search
				"--glob=!**/.git/*",
				"--glob=!**/node_modules/*",
				"--glob=!**/.idea/*",
				"--glob=!**/.vscode/*",
				"--glob=!**/dist/*",
				"--glob=!**/yarn.lock",
				"--glob=!**/package-lock.json",
			},
			pickers = {
				find_files = {
					hidden = true,
					-- needed to exclude some files & dirs from general search
					-- when not included or specified in .gitignore
					find_command = {
						"rg",
						"--files",
						"--hidden",
						"--glob=!**/.git/*",
						"--glob=!**/.idea/*",
						"--glob=!**/.vscode/*",
						"--glob=!**/dist/*",
						"--glob=!**/yarn.lock",
						"--glob=!**/package-lock.json",
					},
				},
			},
		},
	})
end

local keymap = vim.keymap

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.3",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"BurntSushi/ripgrep",
	},
	config = config,
	keys = {
		keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>"),
		keymap.set("n", "<leader>ff", ":Telescope git_files hidden=true<CR>"),
		keymap.set("n", "<leader>fa", ":Telescope find_files hidden=true<CR>"),
		keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>"),
		keymap.set("n", "<leader>fb", ":Telescope buffers<CR>"),
	},
}
