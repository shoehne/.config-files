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
    config = function ()
      vim.g.fugitive_no_maps = 1
    end,
  },
  {
    'NeogitOrg/neogit',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'nvim-telescope/telescope.nvim',
    },
  },
}
