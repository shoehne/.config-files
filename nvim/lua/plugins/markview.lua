return {
    {
        "OXY2DEV/markview.nvim",
        ft = {
            "markdown",
        },
        lazy = false,
        priority = 49,
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "echasnovski/mini.icons",
        },
        opts = {
            preview = {
                enable = true,
                hybrid_modes = {
                    "n",
                    "i",
                },
                debounce = 50,
                icon_provider = "mini",
            },
        },
    },
}
