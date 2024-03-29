--Create default mappings
vim.g.NERDCreateDefaultMappings = 1

--Add spaces after comment delimiters by default
vim.g.NERDSpaceDelims = 1

--Allow commenting and inverting empty lines (useful when commenting a region)
vim.g.NERDCommentEmptyLines = 1

--Align line-wise comment delimiters flush left instead of following code indentation
vim.g.NERDDefaultAlign = 'left'

--Use compact syntax for prettified multi-line comments
vim.g.NERDCompactSexyComs = 1

-- Inicializa NERDTree y asigna una función para cerrarlo si es lo único abierto
vim.cmd([[autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | q | endif]])

