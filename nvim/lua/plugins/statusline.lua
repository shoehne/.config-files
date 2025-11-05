return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      local lualine = require('lualine')
      lualine.setup {
        sections = {
          lualine_c = {
            {
              function()
                return vim.g.remote_neovim_host and ("Remote: %s"):format(vim.uv.os_gethostname()) or ""
              end,
              padding = { right = 1, left = 1 },
              separator = { left = "", right = "" },
            },
          },
          lualine_x = {
            'encoding',
            'filename',
            'filetype',
          },
        },
        extensions = {
          'fern',
          'lazy',
          'mason',
          'nvim-dap-ui',
          'overseer',
          'trouble',
        },
      }
    end,
  },
}
