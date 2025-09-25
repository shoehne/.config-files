return {
  {
    'lewis6991/gitsigns.nvim',
    opts = {
    },
  },
  {
    'sindrets/diffview.nvim',
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
    version = '*',
    cmd = { 'Neogit' },
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'nvim-telescope/telescope.nvim',
    },
  },
}
