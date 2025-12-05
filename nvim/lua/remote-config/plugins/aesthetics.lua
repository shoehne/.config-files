return {
  {
    'tjdevries/overlength.vim',
    enabled = true,
    config = function()
      -- vim.fn['overlength#set_overlength']('log', 0)
      local filetypes = {
        'markdown'
      }
      vim.g.default_overlength = 105
      -- vim.fn['overlength#disable_filetypes'](filetypes)
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
