return {
  'terrortylor/nvim-comment',
  config = function()
    require('nvim_comment').setup({
      comment_empty = true,
      create_mappings = false
    })
  end,
  lazy = false
}
