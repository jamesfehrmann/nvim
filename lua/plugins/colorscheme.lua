-- https://github.com/rose-pine/neovim
-- https://github.com/doums/darcula
-- https://github.com/bluz71/vim-nightfly-colors
-- https://github.com/joshdick/onedark.vim
-- https://github.com/folke/tokyonight.nvim

return {
    { 'bluz71/vim-nightfly-guicolors', priority = 1000 },
    { 'catppuccin/nvim', priority = 1000 },
    { 'doums/darcula', priority = 1000 },
    { 'folke/tokyonight.nvim', priority = 1000 },
    { 'navarasu/onedark.nvim', priority = 1000 },
    { 'rose-pine/neovim', priority = 1000,
        config = function()
            require('rose-pine').setup({
                -- disable_italics = true,
                highlight_groups = {
                    --Comment = { italic = false },
                    ['@parameter'] = { italic = false },
                    ['@property'] = { italic = false },
                    ['@variable'] = { italic = false },
                }
            })
        end
    },

    vim.keymap.set('n', '<leader>c1', '<cmd>colorscheme catppuccin-mocha<cr>'),
    vim.keymap.set('n', '<leader>c2', '<cmd>colorscheme catppuccin-frappe<cr>'),
    vim.keymap.set('n', '<leader>c3', '<cmd>colorscheme catppuccin-macchiato<cr>'),
    vim.keymap.set('n', '<leader>c4', '<cmd>colorscheme catppuccin-latte<cr>'),
    vim.keymap.set('n', '<leader>t1', '<cmd>colorscheme tokyonight-night<CR>'),
    vim.keymap.set('n', '<leader>t2', '<cmd>colorscheme tokyonight-moon<cr>'),
    vim.keymap.set('n', '<leader>t3', '<cmd>colorscheme tokyonight-storm<cr>'),
    vim.keymap.set('n', '<leader>t4', '<cmd>colorscheme tokyonight-day<cr>'),
    vim.keymap.set('n', '<leader>r1', '<cmd>colorscheme rose-pine-main<cr>'),
    vim.keymap.set('n', '<leader>r2', '<cmd>colorscheme rose-pine-moon<cr>'),
    vim.keymap.set('n', '<leader>r3', '<cmd>colorscheme rose-pine-dawn<cr>'),
    vim.keymap.set('n', '<leader>d1', '<cmd>colorscheme onedark<cr>'),
    vim.keymap.set('n', '<leader>d2', '<cmd>colorscheme darcula<cr>'),
    vim.keymap.set('n', '<leader>d3', '<cmd>colorscheme nightfly<cr>'),

}
