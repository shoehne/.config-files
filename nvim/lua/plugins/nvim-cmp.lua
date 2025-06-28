    return {
        {
            'hrsh7th/nvim-cmp',
            dependencies = {
                'hrsh7th/cmp-nvim-lsp',
                'hrsh7th/cmp-buffer',
                'echasnovski/mini.snippets',
                'hrsh7th/cmp-path',
            },
            config = function()
                local cmp = require('cmp')
                cmp.setup({
                    mapping = cmp.mapping.preset.insert({
                    })
                })
            end,
        }
}
