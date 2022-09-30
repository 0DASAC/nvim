local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- Map <leader> to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('n', '<leader>f', ':Files<CR>')


map('n', '<leader>n', ':NERDTreeFocus<CR>')
map('n', '<C-n>', ':NERDTree<CR>')
