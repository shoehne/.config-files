return {
  {
    'lewis6991/gitsigns.nvim',
    enabled = true,
    opts = {
    },
  },
  {
    'sindrets/diffview.nvim',
    enabled = true,
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
    cmd = { 'Neogit' },
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'nvim-telescope/telescope.nvim',
    },
  },
}
