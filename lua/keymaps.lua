


vim.keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = 'Clear search highlights' })
-- keymap.set('n', '<leader>+', '<C-a>', { desc = 'Increment number' })
-- keymap.set('n', '<leader>-', '<C-x>', { desc = 'Decrement number' })

-- window management
vim.keymap.set('n', '<leader>wv', '<C-w>v', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>wh', '<C-w>s', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<leader>we', '<C-w>=', { desc = 'Make splits equal size' })
vim.keymap.set('n', '<leader>wq', '<cmd>close<cr>', { desc = 'Close Window' })
vim.keymap.set('n', '<leader>wr', '<C-w><C-w>', { desc = 'Cycle Windows' })

vim.keymap.set('n', '<leader>wa', '<C-w>h', { desc = 'Goto Window, Left' })
vim.keymap.set('n', '<leader>ws', '<C-w>j', { desc = 'Goto Window, Down' })
vim.keymap.set('n', '<leader>ww', '<C-w>k', { desc = 'Goto Window, Up' })
vim.keymap.set('n', '<leader>wd', '<C-w>l', { desc = 'Goto Window, Right' })

vim.keymap.set('n', '<leader>w-', '<C-w>-', { desc = 'Window Nudge Down' })
vim.keymap.set('n', '<leader>w=', '<C-w>+', { desc = 'Window Nudge Up' })
vim.keymap.set('n', '<leader>w,', '<C-w><', { desc = 'Window Nudge Left' })
vim.keymap.set('n', '<leader>w.', '<C-w>>', { desc = 'Window Nudge Right' })


vim.keymap.set('n', '<leader>bn', '<cmd>bn<cr>', { desc = 'Buffer Next' })
vim.keymap.set('n', '<leader>bp', '<cmd>bp<cr>', { desc = 'Buffer Previous' })
vim.keymap.set('n', '<leader>bf', '<cmd>bf<cr>', { desc = 'Buffer First' })
vim.keymap.set('n', '<leader>bl', '<cmd>bl<cr>', { desc = 'Buffer Last' })
vim.keymap.set('n', '<leader>bd', '<cmd>bd<cr>', { desc = 'Buffer Delete' })
vim.keymap.set('n', '<leader>bs', '<cmd>bs<cr>', { desc = 'Buffer Seek' })

vim.keymap.set('n', '<leader>pv', ':Ex<CR>', {desc = 'Project/directory view'})

vim.keymap.set('n', '<leader>9', 'i(<Esc>', {noremap=true, desc = 'insert ('})
vim.keymap.set('n', '<leader>0', 'a)<Esc>', {noremap=true, desc = 'insert )'})
vim.keymap.set('n', '<leader>[', 'i{<Esc>', {noremap=true, desc = 'insert {'})
vim.keymap.set('n', '<leader>]', 'a}<Esc>', {noremap=true, desc = 'insert }'})
