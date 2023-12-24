local keymap = vim.keymap
local mapkey = require("util.keymapper").mapkey

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

mapkey("<C-h>", "<C-w>h", "n") -- Navigate Left
mapkey("<C-Left>", "<C-w>h", "n") -- Navigate Left
mapkey("<C-j>", "<C-w>j", "n") -- Navigate Down
mapkey("<C-Down>", "<C-w>j", "n") -- Navigate Down
mapkey("<C-k>", "<C-w>k", "n") -- Navigate Up
mapkey("<C-Up>", "<C-w>k", "n") -- Navigate Up
mapkey("<C-l>", "<C-w>l", "n") -- Navigate Right
mapkey("<C-Left>", "<C-w>l", "n") -- Navigate Right
mapkey("<C-h>", "wincmd h", "t") -- Navigate Left
mapkey("<C-Left>", "wincmd h", "t") -- Navigate Left
mapkey("<C-j>", "wincmd j", "t") -- Navigate Down
mapkey("<C-Down>", "wincmd j", "t") -- Navigate Down
mapkey("<C-k>", "wincmd k", "t") -- Navigate Up
mapkey("<C-Up>", "wincmd k", "t") -- Navigate Up
mapkey("<C-l>", "wincmd l", "t") -- Navigate Right
mapkey("<C-Right>", "wincmd l", "t") -- Navigate Right
mapkey("<C-h>", "TmuxNavigateLeft", "n") -- Navigate Left
mapkey("<C-Left>", "TmuxNavigateLeft", "n") -- Navigate Left
mapkey("<C-j>", "TmuxNavigateDown", "n") -- Navigate Down
mapkey("<C-Down>", "TmuxNavigateDown", "n") -- Navigate Down
mapkey("<C-k>", "TmuxNavigateUp", "n") -- Navigate Up
mapkey("<C-Up>", "TmuxNavigateUp", "n") -- Navigate Up
mapkey("<C-l>", "TmuxNavigateRight", "n") -- Navigate Right
mapkey("<C-Right>", "TmuxNavigateRight", "n") -- Navigate Right
-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

--comments
keymap.set("n", "<leader>c", ":CommentToggle<CR>", { noremap = true })
keymap.set("v", "<leader>c", ":CommentToggle<CR>", { noremap = true })

-- Git
keymap.set("n", "<leader>gs", ":G<CR>", opts)
keymap.set("n", "<leader>gv", ":Gvdiffsplit<CR>", opts)
keymap.set("n", "<leader>gb", ":G blame<CR>", opts)

-- Telescope
-- defined in the config for whatever reason, see plugins/telescope.lua
