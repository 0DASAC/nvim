

  -- check if packer is installed (~/local/share/nvim/site/pack)
  -----------------------------------------------------------------------
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
	if vim.fn.input("Hent packer.nvim? (y for yada)") ~= "y" then
		return
	end

	local directory = string.format(
	'%s/site/pack/packer/opt/',
	vim.fn.stdpath('data')
	)

	vim.fn.mkdir(directory, 'p')

	local git_clone_cmd = vim.fn.system(string.format(
	'git clone %s %s',
	'https://github.com/wbthomason/packer.nvim',
	directory .. '/packer.nvim'
	))

	print(git_clone_cmd)
	print("Henter packer.nvim...")

    return
end


  -- Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
  -----------------------------------------------------------------------
vim.api.nvim_create_autocmd('BufWritePost', {
    group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
    pattern = 'plugins.lua',
    command = 'source <afile> | PackerCompile',
})


return require('packer').startup(function()
  -- Packer can mangae itself
  -----------------------------------------------------------------------
    use 'wbthomason/packer.nvim'

  --fzf
  -----------------------------------------------------------------------
    use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
    use {'junegunn/fzf.vim'}
    
  --Formating
  -----------------------------------------------------------------------
    use 'jiangmiao/auto-pairs' -- Close () {} [] '' ""
    use 'SirVer/ultisnips'
    use 'honza/vim-snippets'  -- Sortcuts
    use 'preservim/nerdcommenter' -- Add a Comment

  --IDE
  -----------------------------------------------------------------------
    use 'chriskempson/base16-vim'
    use 'vim-scripts/indentLine.vim'
    use 'preservim/nerdtree'

  --Nice Status Line
  -----------------------------------------------------------------------
    use { 'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    require('lualine').setup()

end)  
