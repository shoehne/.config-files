return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = true,
  },
  {
    'lambdalisue/vim-fern',
    cmd = 'Fern',
    dependencies = {
      'TheLeoP/fern-renderer-web-devicons.nvim',
      'lambdalisue/vim-fern-git-status',
      'lambdalisue/vim-glyph-palette',
      'andykog/fern-bookmarks.vim',
    },
    config = function()
      require('shoehne.keymaps.file-explorer-keymap.lua')

      vim.g["fern#renderer"] = "nvim-web-devicons"
    end,
  },
}
