vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.api.nvim_set_keymap('n', '<F1>', '<NOP>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<F1>', '<NOP>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('s', '<F1>', '<NOP>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('o', '<F1>', '<NOP>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<Esc>', ':nohlsearch<CR><Esc>', { noremap = true, silent = true })

-- The home directory for these is ~/.config/nvim/lua
require('keymaps')
require('options')
require('lazy-setup')

vim.cmd.colorscheme('catppuccin-mocha')
--vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
--vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

