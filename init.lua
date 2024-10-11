require("odasac.core")
require("odasac.lazy")

-- Usa Ctrl + Shift + V para pegar desde el clipboard
vim.api.nvim_set_keymap('n', '<C-S-v>', '"+p', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-S-v>', '"+p', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-S-v>', '<C-R>+', { noremap = true })

-- Restaura Ctrl + V para el modo visual por bloques
vim.api.nvim_set_keymap('n', '<C-v>', '<C-v>', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-v>', '<C-v>', { noremap = true })
