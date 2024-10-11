return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  init = function()
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_quickfix_mode = 0
    vim.g.vimtex_view_method = 'zathura'
    vim.g.vimtex_view_zathura_options = '--synctex-forward @line:@col:@pdf --fork'-- Si usas init.lua
    vim.api.nvim_set_keymap('n', '\\lv', ':!zathura %:r.pdf &<CR>', { noremap = true, silent = true })
  end
}
