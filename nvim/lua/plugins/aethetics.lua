return {
    {
        'xiyaowong/transparent.nvim',
        lazy = false,
        opts = {
            groups = {
                "Normal",
                "NormalNC",
                "Comment",
                "Constant",
                "Special",
                "Identifier",
                "Statement",
                "Function",
                "Conditional",
                "Repeat",
                "Operator",
                "Structure",
                "LineNr",
                "NonText",
                "SignColumn",
                "CursorLine",
                "CursorLineNr",
                "StatusLine",
                "StatusLineNC",
                "EndOfBuffer",
            },
            extra_groups = {
                "Pmenu",
                "PmenuSel",
                "FloatBorder",
                "NormalFloat",
                "WinSeparator",
                -- nvim-treesitter
                "TSNodeKey",
                "TSNodeUnmatched",
                "TSNodeMatched",
                -- harpoon
                "HarpoonWindow",
                "HarpoonBorder",
                "HarpoonInactive",
                "HarpoonActive",
                "HarpoonNumberActive",
                "HarpoonNumberInactive",
            },
            exclude_groups = {

            },
        },
    },
    {
        'rktjmp/lush.nvim',
    }
}
