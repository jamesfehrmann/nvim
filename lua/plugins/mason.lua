-- https://github.com/williamboman/mason.nvim
-- https://github.com/williamboman/mason-lspconfig.nvim

return {
    'williamboman/mason.nvim',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
        'WhoIsSethDaniel/mason-tool-installer.nvim',
    },
    config = function()
        require('mason').setup({
            ui = {
                icons = {
                    package_installed = '✓',
                    package_pending = '➜',
                    package_uninstalled = '✗',
                },
            },
        })

        require('mason-lspconfig').setup({
            ensure_installed = {
                'html', 'clangd', 'lua_ls'
            },
            automatic_installation = true,
        })

        require('mason-tool-installer').setup({
            ensure_installed = {
                'prettier', -- prettier formatter
                'stylua', -- lua formatter
                'isort', -- python formatter
                'black', -- python formatter
                'pylint', -- python linter
               -- 'eslint_d', -- js linter
                'clang-format',
            },
        })
    end,
}
