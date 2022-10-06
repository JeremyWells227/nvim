require('lualine').setup{
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename',{'aerial',colored=true}},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {
				lualine_a = {'buffers'},
        lualine_b = {},
        lualine_c = {},



			},
      winbar = {},
      inactive_winbar = {},
      extensions = {
				'nerdtree',
				"fugitive",
				'aerial',
			}
    }


-- lualine_c_command xxx guifg=#cbe3e7 guibg=#100e23
-- Identifier xxx ctermfg=141 guifg=#d4bfff
-- Function       xxx ctermfg=204 guifg=#f48fb1 
-- Special        xxx ctermfg=122 guifg=#87dfeb  
-- Type           xxx ctermfg=159 guifg=#91ddff
-- Constant       xxx ctermfg=228 guifg=#ffe6b3
-- Include PreProc        xxx ctermfg=120 guifg=#a1efd3 
vim.cmd [[ 
    highlight  LuaLineAerialLine							 guifg=#87dfeb
    highlight  LuaLineAerialArrayIcon         ctermfg=141 guifg=#d4bfff guibg=#100e23
    highlight  LuaLineAerialBooleanIcon       ctermfg=141 guifg=#d4bfff guibg=#100e23
    highlight  LuaLineAerialClassIcon         ctermfg=159 guifg=#91ddff guibg=#100e23
    highlight  LuaLineAerialConstantIcon      ctermfg=228 guifg=#ffe6b3 guibg=#100e23
    highlight  LuaLineAerialConstructorIcon   ctermfg=122 guifg=#87dfeb guibg=#100e23
    highlight  LuaLineAerialEnumIcon          ctermfg=159 guifg=#91ddff guibg=#100e23
    highlight  LuaLineAerialEnumMemberIcon    ctermfg=141 guifg=#d4bfff guibg=#100e23
    highlight  LuaLineAerialEventIcon         ctermfg=141 guifg=#d4bfff guibg=#100e23
    highlight  LuaLineAerialFieldIcon         ctermfg=141 guifg=#d4bfff guibg=#100e23
    highlight  LuaLineAerialFileIcon          ctermfg=141 guifg=#d4bfff guibg=#100e23
    highlight  LuaLineAerialFunctionIcon      ctermfg=204 guifg=#f48fb1 guibg=#100e23
    highlight  LuaLineAerialInterfaceIcon     ctermfg=159 guifg=#91ddff guibg=#100e23
    highlight  LuaLineAerialKeyIcon           ctermfg=141 guifg=#d4bfff guibg=#100e23
    highlight  LuaLineAerialMethodIcon        ctermfg=204 guifg=#f48fb1 guibg=#100e23
    highlight  LuaLineAerialModuleIcon        ctermfg=120 guifg=#a1efd3 guibg=#100e23
    highlight  LuaLineAerialNamespaceIcon     ctermfg=120 guifg=#a1efd3 guibg=#100e23
    highlight  LuaLineAerialNullIcon          ctermfg=141 guifg=#d4bfff guibg=#100e23
    highlight  LuaLineAerialNumberIcon        ctermfg=141 guifg=#d4bfff guibg=#100e23
    highlight  LuaLineAerialObjectIcon        ctermfg=141 guifg=#d4bfff guibg=#100e23
    highlight  LuaLineAerialOperatorIcon      ctermfg=141 guifg=#d4bfff guibg=#100e23
    highlight  LuaLineAerialPackageIcon       ctermfg=120 guifg=#a1efd3 guibg=#100e23
    highlight  LuaLineAerialPropertyIcon      ctermfg=141 guifg=#d4bfff guibg=#100e23
    highlight  LuaLineAerialStringIcon        ctermfg=141 guifg=#d4bfff guibg=#100e23
    highlight  LuaLineAerialStructIcon        ctermfg=159 guifg=#91ddff guibg=#100e23
    highlight  LuaLineAerialTypeParameterIcon ctermfg=141 guifg=#d4bfff guibg=#100e23
    highlight  LuaLineAerialVariableIcon      ctermfg=141 guifg=#d4bfff guibg=#100e23

    highlight  LuaLineAerialArray         guibg=#100e23
    highlight  LuaLineAerialBoolean       guibg=#100e23
    highlight  LuaLineAerialClass         guibg=#100e23
    highlight  LuaLineAerialConstant      guibg=#100e23
    highlight  LuaLineAerialConstructor   guibg=#100e23
    highlight  LuaLineAerialEnum          guibg=#100e23
    highlight  LuaLineAerialEnumMember    guibg=#100e23
    highlight  LuaLineAerialEvent         guibg=#100e23
    highlight  LuaLineAerialField         guibg=#100e23
    highlight  LuaLineAerialFile          guibg=#100e23
    highlight  LuaLineAerialFunction      guibg=#100e23
    highlight  LuaLineAerialInterface     guibg=#100e23
    highlight  LuaLineAerialKey           guibg=#100e23
    highlight  LuaLineAerialMethod        guibg=#100e23
    highlight  LuaLineAerialModule        guibg=#100e23
    highlight  LuaLineAerialNamespace     guibg=#100e23
    highlight  LuaLineAerialNull          guibg=#100e23
    highlight  LuaLineAerialNumber        guibg=#100e23
    highlight  LuaLineAerialObject        guibg=#100e23
    highlight  LuaLineAerialOperator      guibg=#100e23
    highlight  LuaLineAerialPackage       guibg=#100e23
    highlight  LuaLineAerialProperty      guibg=#100e23
    highlight  LuaLineAerialString        guibg=#100e23
    highlight  LuaLineAerialStruct        guibg=#100e23
    highlight  LuaLineAerialTypeParameter guibg=#100e23
    highlight  LuaLineAerialVariable      guibg=#100e23

]]

require'nvim-treesitter.configs'.setup {
	
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust" , 'javascript', 'ruby','python','go','lua'},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing (for "all")

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
		-- additional_vim_regex_highlighting = false,
  },
}
require('telescope').load_extension('aerial')
require('telescope').setup({
	extensions = {
		aerial ={
			show_nesting= true
		}

	}

})
require('lspconfig').pyright.setup{}
require('completion_setup')

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
	-- Toggle the aerial window with <leader>a
	require('aerial').on_attach(client,bufnr)
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}
require('lspconfig')['pyright'].setup{
    on_attach = on_attach,
		capabilities = capabilities,
    flags = lsp_flags,
}
require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
		capabilities = capabilities,
    flags = lsp_flags,

}
require('lspconfig').cssls.setup{
    on_attach = on_attach,
		capabilities = capabilities,
    flags = lsp_flags,
}
require('lspconfig')['rust_analyzer'].setup{
    on_attach = on_attach,
		capabilities = capabilities,
    flags = lsp_flags,
    -- Server-specific settings...
		settings = {
			["rust-analyzer"] = {
				imports = {
					granularity = {
						group = "module",
						},
					prefix = "self",
					},
				cargo = {
					buildScripts = {
						enable = true,
						},
					},
				procMacro = {
					enable = true
					},
				}
			}
} 
--require('lspconfig').vimls.setup{
--	on_attach=on_attach
--}
