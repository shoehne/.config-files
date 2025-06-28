return {
    {
        "echasnovski/mini.misc",
        version = '*',
        config = function()
            require('mini.misc').setup()
            require('mini.misc').setup_auto_root()
        end,
    },
    {
        'echasnovski/mini.colors',
        version = '*',
    },
    {
        'echasnovski/mini.sessions',
        version = '*',
        config = function()
            -- require('mini.sessions').setup({
            --     autowrite = true
            -- })
        end,
    },
}
