-- Search
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-- Appearence
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 10
vim.opt.number = true
vim.opt.colorcolumn = "120"
vim.opt.signcolumn = "yes"
vim.opt.cmdheight = 1
vim.opt.completeopt = "menuone,noinsert,noselect"

-- Tabs I have no idea why vim needs so much tab action
local TAB_WIDTH = 2

vim.opt.softtabstop = TAB_WIDTH
vim.opt.tabstop = TAB_WIDTH
vim.opt.shiftwidth = TAB_WIDTH
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

-- Behavior
vim.opt.errorbells = false
vim.opt.swapfile = false
vim.opt.backspace = "indent,eol,start"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.mouse:append("a")
vim.opt.clipboard = "unnamed,unnamedplus"

vim.opt.modifiable = true
vim.opt.autochdir = false

-- plugin needed things
-- needed for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "
vim.opt.updatetime = 50
-- mappings need to be loaded before lazy
require("config.lazy")
require("config.mappings")
