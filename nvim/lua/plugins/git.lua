return {
  {
    'lewis6991/gitsigns.nvim',
    enabled = true,
    event = {
      'BufReadPre',
    },
  },
  {
    'sindrets/diffview.nvim',
    enabled = true,
    cmd = {
      'DiffViewOpen',
    },
  },
  {
    "tpope/vim-fugitive",
    enabled = false,
    config = function ()
      vim.g.fugitive_no_maps = 1
    end,
  },
  {
    'NeogitOrg/neogit',
    enabled = true,
    version = '*',
    cmd = { 
      'Neogit'
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'nvim-telescope/telescope.nvim',
    },
  },
}
