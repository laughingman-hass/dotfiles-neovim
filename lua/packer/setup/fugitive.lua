local settings = { noremap = true }
vim.api.nvim_set_keymap('n', '<leader>ga',       ':Git add --patch<cr>', settings)
vim.api.nvim_set_keymap('n', '<leader>gb',       ':Git blame<cr>', settings)
vim.api.nvim_set_keymap('n', '<leader>gc',       ':Git commit<cr>', settings)
vim.api.nvim_set_keymap('n', '<leader>gd',       ':Gdiff<cr>', settings)
vim.api.nvim_set_keymap('n', '<leader>gf',       ':Git fetch<cr>', settings)
vim.api.nvim_set_keymap('n', '<leader>gg',       ':Git<space>', settings)
vim.api.nvim_set_keymap('n', '<leader>gk',       ':Git checkout<space>', settings)
vim.api.nvim_set_keymap('n', '<leader>gl',       ':Git pull<cr>', settings)
vim.api.nvim_set_keymap('n', '<leader>gp',       ':Git push<cr>', settings)
vim.api.nvim_set_keymap('n', '<leader>gs',       ':Git<cr><c-w><s-h>', settings)
vim.api.nvim_set_keymap('n', '<leader>gw',       ':Gwrite<cr>', settings)
vim.api.nvim_set_keymap('n', '<localleader>gc',  ':Git commit --amend<cr>', settings)
vim.api.nvim_set_keymap('n', '<localleader>gw',  ':Git add --patch %<cr>', settings)
vim.api.nvim_set_keymap('n', '<leader>ge',       ':Gedit<space>', settings)
