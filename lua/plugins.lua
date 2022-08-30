return require('packer').startup(function()

	use 'wbthomason/packer.nvim'	
	use { 'vim-ruby/vim-ruby',
	ft="ruby"
}
	use 'preservim/nerdtree'
--	use 'vim-airline/vim-airline'
--	use 'vim-airline/vim-airline-themes'
	use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'ap/vim-css-color'
	use 'tpope/vim-surround'
	use 'mattn/emmet-vim'
	use 'tpope/vim-fugitive'
	use 'ryanoasis/vim-devicons'
	use { 'tpope/vim-rails', ft="ruby"}
	use 'iamcco/markdown-preview.nvim'
	use 'Einenlum/yaml-revealer'
	use 'xuhdev/vim-latex-live-preview'
	use {
		'nvim-treesitter/nvim-treesitter' ,
		run = ':TSUpdate'
	}
	use 'nvim-treesitter/nvim-treesitter-context'
	use {
		'nvim-telescope/telescope.nvim',   
		branch = '0.1.x',  
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use 'liuchengxu/graphviz.vim' 
	use 'embark-theme/vim'
	use 'RRethy/vim-hexokinase'
  use 'https://git.sr.ht/~lmartinez/lualine-embark'	

end)
