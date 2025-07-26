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
                        local omnisharp_binary = vim.fn.getenv('OMNISHARP_LANGUAGE_SERVER')
                        if omnisharp_binary and omnisharp_binary ~= "" then
                            return {
                                omnisharp_binary,
                                "--languageserver",
                                "--hostPID",
                                toString(pid)
                            }
                        else
                            return nil
                        end
                    end)(),
                },
            },
        },
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
