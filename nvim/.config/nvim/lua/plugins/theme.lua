-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	lazy = false,
-- 	config = function()
-- 		require("catppuccin").setup({
-- 			flavour = "mocha",
-- 			background = {
-- 				light = "latte",
-- 				dark = "mocha",
-- 			},
--       transparent_background = true,
-- 			integrations = {
-- 				cmp = true,
-- 				gitsigns = true,
-- 				nvimtree = true,
-- 				treesitter = true,
-- 			},
-- 		})
-- 		vim.cmd("colorscheme catppuccin")
-- 	end,
-- }
--
return {
  'EdenEast/nightfox.nvim',
  config = function()
    require('nightfox').setup({
      options = {
        transparent = true,
      }
    })
    vim.cmd('colorscheme carbonfox')
  end,
}
