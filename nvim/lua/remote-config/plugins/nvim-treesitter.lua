return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local nvim_treesitter = require('nvim-treesitter')

      nvim_treesitter.install({
        'dockerfile',
        'lua',
        'make',
        'markdown',
        'markdown_inline',
        'sql',
        'toml',
        'vim',
        'xml',
        'yaml',
      })--.wait(300000)
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    opts = {},
  }
}
