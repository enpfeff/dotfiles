return {
  'ruifm/gitlinker.nvim',
  config = function()
    require('gitlinker').setup {
      opts = {
        remote = nil,
        add_current_line_on_normal_mode = true,
        action_callback = require('gitlinker.actions').copy_to_clipboard,
        mappings = '<leader>gy',
      },
      callbacks = {
        ['github.com'] = require('gitlinker.hosts').get_github_type_url,
        ['gitlab.com'] = require('gitlinker.hosts').get_gitlab_type_url,
        ['github-pax8'] = function(url_data)
          url_data.host = 'github.com'
          return require('gitlinker.hosts').get_github_type_url(url_data)
        end,
      },
    }
  end,
}
