local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- Directory Navigation
keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", opts)
keymap.set("n", "<leader>E", ":NvimTreeToggle<CR>", opts)

-- Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Left
keymap.set("n", "<C-Left>", "<C-w>h", opts) -- Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Down
keymap.set("n", "<C-Down>", "<C-w>j", opts) -- Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Up
keymap.set("n", "<C-Up>", "<C-w>k", opts) -- Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Right
keymap.set("n", "<C-Right>", "<C-w>l", opts) -- Right

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

--comments
keymap.set("n", "<leader>c", ":CommentToggle<CR>", { noremap = true })
keymap.set("v", "<leader>c", ":CommentToggle<CR>", { noremap = true })

-- Telescope
-- defined in the config for whatever reason, see plugins/telescope.lua
