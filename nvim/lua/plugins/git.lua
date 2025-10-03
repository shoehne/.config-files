return {
  {
    'lewis6991/gitsigns.nvim',
    enabled = false,
    opts = {
    },
  },
  {
    'sindrets/diffview.nvim',
    enabled = false,
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
    enabled = false,
    version = '*',
    cmd = { 'Neogit' },
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'nvim-telescope/telescope.nvim',
    },
  },
}
