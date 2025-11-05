return {
  {
    'tidalcycles/vim-tidal',
    enabled = false,
    ft = {
      'tidal'
    },
  },
  {
    'davidgranstrom/scnvim',
    enabled = false,
  },
  {
    'jbfits/cycles.nvim',
    enabled = false,
    -- ft = {
    --   'tidal'
    -- },
    opts = {
      boot = {
        sclang = {
          scnvim = false,
        },
      },
    },
  },
  {
    'grddavies/tidal.nvim',
    enabled = false,
    opts = {
      boot = {
        tidal= {
          file = vim.fn.expand("~/.config/tidal-cycles/boot-tidal.hs"),
        },
        sclang = {
          enabled = true,
          file = vim.fn.expand("~/.config/tidal-cycles/boot-superdirt.scd"), 
        },
      },
      mappings = {
        send_line = {mode ={'i', 'n'}, key = '<C-CR>'},
      },
    },
  },
  {
    "gruvw/strudel.nvim",
    enabled = true,
    build = "npm install",
    config = function()
      require("strudel").setup()
    end,
  },
  {
    'OmSingh2003/Strudel-nvim',
    enabled = false,
    config = function()
      require('strudel-nvim').setup({})
    end,
  },
}
