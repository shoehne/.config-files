return {
    {
        "mason-org/mason.nvim",
        opts = {},
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                omnisharp = {
                    cmd = (function()
                        local pid = vim.fn.getpid()
                        local omnisharp_binary = ''
                        if package.config:sub(1, 1) == '\\' then
                            omnisharp_binary = '../../omnisharp/artifacts/publish/OmniSharp.Stdio.Driver/win7-x64/net6.0/OmniSharp.exe'
                        else
                            omnisharp_binary = '../../omnisharp/artifacts/publish/OmniSharp.Stdio.Driver/linux-x64/net6.0/OmniSharp'
                        end
                        if omnisharp_binary and omnisharp_binary ~= '' then
                            return {
                                omnisharp_binary,
                                "--languageserver",
                                "--hostPID",
                                tostring(pid)
                            }
                        else
                            return nil
                        end
                    end)(),
                },
            },
        },
        config = function(_, opts)
            local lspconfig = require('lspconfig')
            for server, server_opts in pairs(opts.servers) do
                lspconfig[server].setup(server_opts)
            end
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
                    "clangd",
                    "lua_ls",
                    "omnisharp",
                }
            }
        end
    },
}
