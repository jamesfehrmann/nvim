return {
    {'tpope/vim-fugitive',
    },
    'tpope/vim-rhubarb',
    'tpope/vim-sleuth',
    'tpope/vim-tbone',
    { 'lewis6991/gitsigns.nvim', opts = {
        signs = {
            add = { text = '' },
            change = { text = '' },
            delete = { text = '󰞒' },
            topdelete = { text = '󰞕' },
            changedelete = { text = '~' },
        },
    }},
}
