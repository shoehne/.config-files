return {
  {
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        {
          path = '${3rd}/luv/library',
          words = {
            'vim%.uv',
          },
        },
        {
          'nvim-dap-ui'
        },
      },
    },
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
    },
    config = function()
      require('cmp').setup {
        snippet ={
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        sources = {
          {
            name = 'luasnip_choice'
          },
        },
      }
    end,
  },
  {
    'L3MON4D3/LuaSnip',
  },
  {
    'doxnit/cmp-luasnip-choice',
    config = function()
      require('cmp_luasnip_choice').setup({
        auto_optn = true,
      })
    end,
  },
}
