return {
  {
    'nvim-telescope/telescope.nvim', 
    dependencies = { 
      'nvim-lua/plenary.nvim' 
    },
    opts = {
      defaults = {
        mappings = {
          i = {
          },
        },
        vimgrep_arguments = {
          'rg',
          '--smart-case',
          '--hidden',
          '--color=never',
          '--with-filename',
          '--line-number',
          '--column',
          '--ignore-file',
          vim.fn.expand('$XDG_CONFIG_HOME/.ignore'),
        },
        pickers = {
          find_files = {
            find_command = {
              'rg',
              '--files',
              '--ignore-file',
              vim.fn.expand('$XDG_CONFIG_HOME/.ignore'),
            },
          },
        },
      },
    },
    config = function(_,
      opts)
      require('telescope').setup(opts)
      require('shoehne.keymaps.telescope-keymap')
    end,
  }
}
