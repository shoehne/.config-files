return {
  {
    'folke/lazydev.nvim',
    enabled = false,
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
    enabled = false,
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
    },

    config = function()
      local cmp =  require('cmp')

      -- cmp.register_source('easy-dotnet', require('easy-dotnet').package_completion_source)
      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<CR>'] = cmp.mapping.confirm({ select=true }),
        }),
        sources = cmp.config.sources({
          {
            name = 'nvim_lsp'
          },
          {
            name = 'luasnip'
          },
          -- { name = 'easy-dotnet' },
        }, {
          {
            name = 'buffer'
          },
        }),
      })

      local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
    end,
  },
  {
    'L3MON4D3/LuaSnip',
    enabled = false,
  },
  {
    'doxnit/cmp-luasnip-choice',
    enabled = false,
    config = function()
      require('cmp_luasnip_choice').setup({
        auto_optn = true,
      })
    end,
  },
}
