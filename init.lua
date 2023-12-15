vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- The home directory for these is ~/.config/nvim/lua
require('keymaps')
require('options')
require('lazy-setup')

vim.cmd.colorscheme('catppuccin-mocha')
--vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
--vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
-- testing for git
--

