-- https://github.com/williamboman/mason.nvim
-- https://github.com/williamboman/mason-lspconfig.nvim
-- https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim

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
            automatic_installation = true,
            ensure_installed = {
                'clangd',
                'lua_ls',
                'pyright',
                'autotools_ls',
                'bashls',
                'arduino_language_server',
            },
        })

        require('mason-tool-installer').setup({
            ensure_installed = {
                'clang-format',
                'stylua',
                'pylint',
            },
        })
    end,
}
