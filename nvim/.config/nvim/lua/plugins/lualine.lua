return {
  'nvim-lualine/lualine.nvim',
  lazy = false,
  config = function()
    require('lualine').setup({
      options = {
        theme = 'auto',
        globalstatus = true,
      },
      sections = {
        lualine_a = {
          {
            'buffers',
          }
        }
      }
    })
  end
}
