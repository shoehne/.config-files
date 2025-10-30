return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local nvim_treesitter = require('nvim-treesitter')

      nvim_treesitter.install({
        'asm',
        'c',
        'cpp',
        'dockerfile',
        'diff',
        'dtd',
        'haskell',
        'lua',
        'make',
        'markdown',
        'markdown_inline',
        'sql',
        'supercollider',
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
