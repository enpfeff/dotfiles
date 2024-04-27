local keymap = vim.keymap

local opts = { noremap = true, silent = true }

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Directory Navigation
keymap.set('n', '<leader>e', ':NvimTreeFocus<CR>', opts)
keymap.set('n', '<leader>E', ':NvimTreeToggle<CR>', opts)

-- Navigation
keymap.set('n', '<C-h>', '<C-w>h', opts) -- Navigate Left
keymap.set('n', '<C-j>', '<C-w>j', opts) -- Navigate Down
keymap.set('n', '<C-k>', '<C-w>k', opts) -- Navigate Up
keymap.set('n', '<C-l>', '<C-w>l', opts) -- Navigate Right
keymap.set('n', '<C-h>', 'TmuxNavigateLeft', opts) -- Navigate Left
keymap.set('n', '<C-j>', 'TmuxNavigateDown', opts) -- Navigate Down
keymap.set('n', '<C-k>', 'TmuxNavigateUp', opts) -- Navigate Up
keymap.set('n', '<C-l>', 'TmuxNavigateRight', opts) -- Navigate Right

-- Indenting
keymap.set('v', '<', '<gv')
keymap.set('v', '>', '>gv')

--comments
keymap.set('n', '<leader>c', ':CommentToggle<CR>', opts)
keymap.set('v', '<leader>c', ':CommentToggle<CR>', opts)

-- Move
keymap.set('v', 'J', ":m '>+1<CR>gv=gv", opts)
keymap.set('v', 'K', ":m '<-2<CR>gv=gv", opts)
keymap.set('n', '<C-d>', '<C-d>zz', opts)
keymap.set('n', '<C-u>', '<C-u>zz', opts)

keymap.set('n', 'n', 'nzzzv', opts)
keymap.set('n', 'N', 'Nzzzv', opts)

keymap.set('x', '<leader>p', '"_dP', opts)
keymap.set('n', '<leader>y', '"+y', opts)
keymap.set('v', '<leader>y', '"+y', opts)
keymap.set('n', '<leader>Y', '"+y', opts)

keymap.set('n', '<leader>d', '"_d', opts)
keymap.set('v', '<leader>d', '"_d', opts)
keymap.set('n', '<leader>ai', ':ChatGPT<CR>', opts)

keymap.set('n', 'H', '^', opts)
keymap.set('n', 'L', '$', opts)
keymap.set('i', 'jk', '<ESC>', opts)

return {}
