-- https://github.com/nvim-lualine/lualine.nvim

return {
     'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons', opt = true
        },
        config = function()
            require('lualine').setup({
                options = {
                    --  theme = 'iceberg_dark',
                    icons_enabled = true
                }
            })
        end,
}
