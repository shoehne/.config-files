return {
    {
        'xiyaowong/transparent.nvim',
        lazy = false,
        enabled = false,
    },
    {
        'rktjmp/lush.nvim',
        enabled = true,
        lazy = false,
    },
    {
      'tjdevries/colorbuddy.nvim',
      enabled = false,
    },
  {
    'tjdevries/overlength.vim',
    enabled = true,
    config = function()
      -- vim.fn['overlength#set_overlength']('log', 0)
      local filetypes = {
        'markdown'
      }
      -- vim.fn['overlength#disable_filetypes'](filetypes)
      vim.g.default_overlength = 80
    end,
  },
  {
    'nvim-tree/nvim-web-devicons',
    enabled = true,
    lazy = false,
    -- version = '0.x',
    opts = {},
  },
}
