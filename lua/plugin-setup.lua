require('lualine').setup{
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = ')', right = '('},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {}, always_divide_middle = true,
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
        lualine_c = {'filename',{'aerial',colored=true,sep=' ) '}},
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
      tabline = { lualine_a = {'buffers'}, lualine_b = {},
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

require('colorizer').setup()
require'nvim-treesitter.configs'.setup {
	
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust" , 'javascript', 'ruby','python','go','lua','org'},

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
		additional_vim_regex_highlighting = {'org'},
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
require('mason').setup()
require('mason-lspconfig').setup()
require('lspconfig').pyright.setup{}
require('lspconfig').rust_analyzer.setup{}
require('lspconfig').tsserver.setup{}
require('completion_setup')

-- Setup lspconfig.
--local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

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
	--require('aerial').on_attach(client,bufnr)
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


local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
local dap = require('dap')
 dap.adapters.chrome = {
    type = "executable",
    command = "node",
    args = {os.getenv("HOME") .. "/home/jeremy/git/vscode-chrome-debug/out/src/chromeDebug.js"} -- TODO adjust
}
dap.configurations.typescriptreact = { -- change to typescript if needed
    {
        type = "chrome",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        port = 9222,
        webRoot = "${workspaceFolder}"
    }
}

require('dapui').setup()

require('dap-python').setup('/usr/bin/python')
--require('lspconfig').sumneko_lua.setup({
--on_attach = on_attach,
--settings = {
--    Lua = {
--    runtime = {
--        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
--        version = "LuaJIT",
--        -- Setup your lua path
--        path = runtime_path,
--    },
--    diagnostics = {
--        -- Get the language server to recognize the `vim` global
--        globals = { "vim" },
--    },
--    workspace = {
--        -- Make the server aware of Neovim runtime files
--        library = vim.api.nvim_get_runtime_file("", true),
--    },
--    -- Do not send telemetry data containing a randomized but unique identifier
--    telemetry = {
--        enable = false,
--    },
--    },
--},
--})


--require('lspconfig').vimls.setup{
--	on_attach=on_attach
--}
