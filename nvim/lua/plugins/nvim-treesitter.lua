return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",
        opts = {
                ensure_installed = {
                    "asm",
                    "c",
                    "cpp",
                    "c_sharp",
                    "lua",
                    "markdown",
                    "markdown_inline",
                    "vim",
                    "vimdoc",
                    "xml",
                    "yaml",
                },
                auto_install = true,
                highlight = {
                    enable = true,
                    disable = function(lang, buf)
                        local max_filesize = 100 * 1024 -- 100 KB
                        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                        if ok and stats and stats.size > max_filesize then
                            return true
                        end
                    end,
                    additional_vim_regex_highlighting = true
                },
                indent = {
                    enable = true
                }
        }
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        opts = {},
    }
}
