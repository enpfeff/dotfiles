local config = function() 
  local telescope = require('telescope')
  telescope.setup({
    defaults = {
      mappings = {}
    }
  })
end

local keymap = vim.keymap

return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.3',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'BurntSushi/ripgrep'
  },
  config = config,
  keys = {
    keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>"),
    keymap.set("n", "<leader>ff", ":Telescope find_files<CR>"),
    keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>"),
    keymap.set("n", "<leader>fb", ":Telescope buffers<CR>"),
  }
}
