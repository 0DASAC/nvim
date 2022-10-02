local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- Map <leader> to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--FZF Lua
map('n', '<leader>f', "<cmd>lua require('fzf-lua').files()<CR>",
{ noremap = true, silent = true })

-- NerdTree
map('n', '<leader>n', ':NERDTreeFocus<CR>')
map('n', '<C-n>', ':NERDTree<CR>')

-- Ultisnips
vim.g.UltiSnipsExpandTrigger = '<C-TAB>'

-- NerdCommenter
vim.g.NERDCommenterComment = '<leader>cc'
vim.g.NERDCommenterUncomment = '<leader>cu'


