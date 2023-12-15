return {
    {'neovim/nvim-lspconfig',
        event = { 'BufReadPre', 'BufNewFile' },
        dependencies = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'hrsh7th/cmp-nvim-lsp',
            { 'j-hui/fidget.nvim', opts = {} },
            'folke/neodev.nvim',
            { 'antosha417/nvim-lsp-file-operations', config = true },
        },
        config = function()
            local lspconfig = require('lspconfig')
            local cmp_nvim_lsp = require('cmp_nvim_lsp')

            local opts = { noremap = true, silent = true }

            local on_attach = function(client, bufnr)
                opts.buffer = bufnr

                -- set keybinds
                opts.desc = 'Show LSP references'
                vim.keymap.set('n', 'gR', '<cmd>Telescope lsp_references<CR>', opts) 

                opts.desc = 'Go to declaration'
                vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts) 

                opts.desc = 'Show LSP definitions'
                vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<CR>', opts) 

                opts.desc = 'Show LSP implementations'
                vim.keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<CR>', opts) 

                opts.desc = 'Show LSP type definitions'
                vim.keymap.set('n', 'gt', '<cmd>Telescope lsp_type_definitions<CR>', opts)

                opts.desc = 'See available code actions'
                vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)

                opts.desc = 'Smart rename'
                vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)

                opts.desc = 'Show buffer diagnostics'
                vim.keymap.set('n', '<leader>D', '<cmd>Telescope diagnostics bufnr=0<CR>', opts)

                opts.desc = 'Show line diagnostics'
                vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)

                opts.desc = 'Go to previous diagnostic'
                vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)

                opts.desc = 'Go to next diagnostic'
                vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

                opts.desc = 'Show documentation for what is under cursor'
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)

                opts.desc = 'Restart LSP'
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
                settings = { -- custom settings for lua
                    Lua = {
                        -- make the language server recognize 'vim' global
                        diagnostics = {
                            globals = { 'vim' },
                        },
                        workspace = {
                            -- make language server aware of runtime files
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

            -- configure python server
            lspconfig['pyright'].setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })

            -- configure python server
            lspconfig['clangd'].setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })


        end,
    }


}