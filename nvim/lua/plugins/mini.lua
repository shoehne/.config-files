return {
  {
    "echasnovski/mini.misc",
    enabled = false,
    version = '*',
    config = function()
      require('mini.misc').setup()
      require('mini.misc').setup_auto_root()
    end,
  },
  {
    'echasnovski/mini.sessions',
    enabled = false,
    version = '*',
    config = function()
      -- require('mini.sessions').setup({
        --     autowrite = true
        -- })
      end,
    },
    {
      'echasnovski/mini.icons',
      enabled = false,
      version = '*',
    },
  }
