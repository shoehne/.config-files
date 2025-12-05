return {
  {
    'amitds1997/remote-nvim.nvim',
    enabled = true,
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'MunifTanjim/nui.nvim',
    },
    config = function()
      local remote = require('remote-nvim')
      remote.setup {
        ssh_config = {
          ssh_config_file_paths = {
            "$HOME/.ssh/config",
          },
        },
        remote = {
          copy_dirs = {
            config = {
              base = vim.fn.stdpath('config'),
              dirs = {
                'remote-config'
              },
            },
          },
        }
      }
    end,
  },
}
