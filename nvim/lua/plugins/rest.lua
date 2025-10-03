return {
  {
    'mistweaverco/kulala.nvim',
    enabled = false,
    keys = {
      {
        '<leader>Rs',
        desc = 'Send Request',
      },
      {
        '<leader>Ra',
        desc = 'Send all requests',
      },
      {
        '<leader>Rb',
        desc = 'Open scratchpad',
      },
    },
    ft = {
      'http',
      'rest'
    },
    opts = {
      global_keymaps = false,
      global_keymaps_prefix = '<leader>R',
      kulala_keymap_prefix = '',
    },
  },
  {
    'oysandvik94/curl.nvim',
    enabled = false,
    cmd = {
      'CurlOpen',
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },
  config = true
}
