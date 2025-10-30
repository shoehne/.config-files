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
      vim.g.default_overlength = 80
    end,
  },
}
