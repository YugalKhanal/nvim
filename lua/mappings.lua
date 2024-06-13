vim.keymap.set('i', '<C-h>', "<Left>", { desc = "Move left" })
vim.keymap.set('i', '<C-l>', "<Right>", { desc = "Move right" })
vim.keymap.set('i', '<C-j>', "<Down>", { desc = "Move down" })
vim.keymap.set('i', '<C-k>', "<Up>", { desc = "Move up" })
vim.keymap.set('n', '<leader>S', ':w<CR>', { desc = "Save file" })
vim.keymap.set('n', '<leader>Q', ':q<CR>', { desc = "Quit file" })
-- add focus neo-tree with <leader>e
