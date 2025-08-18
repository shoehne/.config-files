return {
    {
        "mason-org/mason.nvim",
        opts = {},
    },
    {
        "neovim/nvim-lspconfig",
        opts = {},
        config = function()
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig"
        },
        config = function ()
            require("mason-lspconfig").setup {
                ensure_installed = {
                    "asm_lsp",
                    "clang-format",
                    "clangd",
                    "lua_ls",
                    "omnisharp",
                }
            }
        end
    },

    {
        'neovim/nvim-lspconfig',
        ft = {
            'cs',
            'vb',
        },
        config = function() 
            local root_dir = vim.fn.getcwd()
            local has_csproj = vim.fn.glob(root_dir .. '/*.csproj') ~= ""
            local has_vbproj = vim.fn.glob(root_dir .. '/*.vbproj') ~= ""

            if has_csproj or has_vbproj then
                local lspconfig = require('lspconfig')

                lspconfig.omnisharp.setup {
                    cmd = {'omnisharp'},
                    on_attach = function(client, bufnr) 
                    end,
                }
            end
        end,
    },
}


