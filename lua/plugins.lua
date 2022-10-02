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
	use 'onsails/lspkind.nvim'
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
	use {
		'stevearc/aerial.nvim',
		config = function() require('aerial').setup ({
			backends = { "lsp", "treesitter", "markdown" } ,
			on_attach = function(bufnr)
				-- Toggle the aerial window with <leader>a
				vim.api.nvim_buf_set_keymap(bufnr, "n", "<c-,>", "<cmd>AerialToggle! right<CR>", {})
				-- Jump forwards/backwards with "{" and "}"
				vim.api.nvim_buf_set_keymap(bufnr, "n", "{", "<cmd>AerialPrev<CR>", {})
				vim.api.nvim_buf_set_keymap(bufnr, "n", "}", "<cmd>AerialNext<CR>", {})
				-- Jump up the tree with "[[" or "]]"
				vim.api.nvim_buf_set_keymap(bufnr, "n", "[[", "<cmd>AerialPrevUp<CR>", {})
				vim.api.nvim_buf_set_keymap(bufnr, "n", "]]", "<cmd>AerialNextUp<CR>", {})
			end,
			layout = {
				default_direction = "prefer_left",
				max_width = {40,0.2},
				width = nil,
				min_width = 20,
			}
		}) 
	end
}
end)
