-- https://github.com/neovim/nvim-lspconfig

return {
    {
        'neovim/nvim-lspconfig',
        event = { 'BufReadPre', 'BufNewFile' },
        dependencies = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'hrsh7th/cmp-nvim-lsp',
            { 'j-hui/fidget.nvim',                   opts = {} },
            --'folke/neodev.nvim',
            'folke/lazydev.nvim',
            { 'antosha417/nvim-lsp-file-operations', config = true },
        },
        config = function()
            local lspconfig = require('lspconfig')
            local cmp_nvim_lsp = require('cmp_nvim_lsp')

            local opts = { noremap = true, silent = true }

            local on_attach = function(client, bufnr)
                opts.buffer = bufnr

                vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
                vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
                vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
                vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
                vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
                vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
                vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
                --vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
                --vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
                --vim.keymap.set('n', '<space>wl', function()
                --    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                --end, opts)
                vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
                vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
                vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
                vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
                vim.keymap.set('n', '<space>f', function()
                    vim.lsp.buf.format { async = true }
                end, opts)

                vim.keymap.set('n', '<leader>rs', ':LspRestart<CR>', opts)
            end


            local capabilities = cmp_nvim_lsp.default_capabilities()
            local signs = { Error = ' ', Warn = ' ', Hint = '󰠠 ', Info = ' ' }
            for type, icon in pairs(signs) do
                local hl = 'DiagnosticSign' .. type
                vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
            end

            -- configure lua server (with special settings)
            lspconfig['lua_ls'].setup({
                capabilities = capabilities,
                on_attach = on_attach,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { 'vim' },
                        },
                        workspace = {
                            library = {
                                [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                                [vim.fn.stdpath('config') .. '/lua'] = true,
                            },
                        },
                    },
                },
            })

            -- configure html server
            lspconfig['html'].setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })

            -- configure java server
            --            lspconfig['java'].setup({
            --                capabilities = capabilities,
            --                on_attach = on_attach,
            --            })

            -- configure python server
            lspconfig['pyright'].setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })

            -- configure clangd server
            lspconfig['clangd'].setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })

            -- docker language server
            lspconfig['dockerls'].setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })

            --arduino
            local fqbn = "teensy:avr:teensy41"
            lspconfig['arduino_language_server'].setup({
                capabilities = capabilities,
                on_attach = on_attach,
                cmd = {
                    "arduino-language-server",
                    "-cli-config", "/home/jfehrmann/.arduino15/arduino-cli.yaml",
                    "-cli", "/usr/local/bin/arduino-cli",
                    -- "-clangd"      , "/opt/clangd/bin/clangd",
                    "-clangd", "/usr/bin/clangd",
                    "-fqbn", fqbn,
                },
                filetypes = { "arduino" },
                root_dir = require("lspconfig.util").root_pattern("*.ino"),
            })

            vim.diagnostic.config({
                virtual_text = {
                    prefix = '*',
                    spacing = 2,
                },
                underline = true,
                signs = true,
                update_in_insert = false,
            })
        end,
    }
}
