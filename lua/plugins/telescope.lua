-- https://github.com/nvim-telescope/telescope.nvim

return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        local telescope = require('telescope')
        local actions = require('telescope.actions')

        telescope.setup({
            defaults = {
                path_display = { 'truncate ' },
                mappings = {
                    i = {
                        ['<C-k>'] = actions.move_selection_previous,
                        ['<C-j>'] = actions.move_selection_next,
                    },
                },
            },
        })

        telescope.load_extension('fzf')

        vim.keymap.set('n', '<leader>so', require('telescope.builtin').oldfiles, { desc = 'Search Recently Opened' })
        vim.keymap.set('n', '<leader>sb', require('telescope.builtin').buffers, { desc = 'Search Buffers' })
        vim.keymap.set('n', '<leader>ss', require('telescope.builtin').builtin, { desc = 'Search Select' })
        vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search Git Files' })
        vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = 'Search Files' })
        vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = 'Search Help Tags' })
        vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = 'Search Grep String' })
        vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = 'Search Live Grep' })
        vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = 'Search Diagnostics' })
        vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = 'Search Resume' })

    end,
}
