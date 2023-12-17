-- https://github.com/ThePrimeagen/harpoon

return {
    'ThePrimeagen/harpoon',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    config = function()
        vim.keymap.set('n', '<leader>hm', '<cmd>lua require("harpoon.mark").add_file()<cr>',
            { desc = 'Mark file with harpoon' }
        )
        vim.keymap.set('n', '<leader>hn', '<cmd>lua require("harpoon.ui").nav_next()<cr>',
            { desc = 'Go to next harpoon mark' }
        )
        vim.keymap.set('n', '<leader>hp', '<cmd>lua require("harpoon.ui").nav_prev()<cr>',
            { desc = 'Go to previous harpoon mark' }
        )
        vim.keymap.set('n', '<leader>hh', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>',
            { desc = 'View all project marks' }
        )
        vim.keymap.set('n', '<leader>h1', '<cmd>lua require("harpoon.ui").nav_file(1)<cr>',
            { desc = 'Go to harpoon file 1' }
        )
        vim.keymap.set('n', '<leader>h2', '<cmd>lua require("harpoon.ui").nav_file(2)<cr>',
            { desc = 'Go to harpoon file 2' }
        )
        vim.keymap.set('n', '<leader>h3', '<cmd>lua require("harpoon.ui").nav_file(3)<cr>',
            { desc = 'Go to harpoon file 3' }
        )
        vim.keymap.set('n', '<leader>h4', '<cmd>lua require("harpoon.ui").nav_file(4)<cr>',
            { desc = 'Go to harpoon file 4' }
        )
        vim.keymap.set('n', '<leader>h5', '<cmd>lua require("harpoon.ui").nav_file(5)<cr>',
            { desc = 'Go to harpoon file 5' }
        )
        vim.keymap.set('n', '<leader>h6', '<cmd>lua require("harpoon.ui").nav_file(6)<cr>',
            { desc = 'Go to harpoon file 6' }
        )
        vim.keymap.set('n', '<leader>h7', '<cmd>lua require("harpoon.ui").nav_file(7)<cr>',
            { desc = 'Go to harpoon file 7' }
        )
        vim.keymap.set('n', '<leader>h8', '<cmd>lua require("harpoon.ui").nav_file(8)<cr>',
            { desc = 'Go to harpoon file 8' }
        )
    end,
}
