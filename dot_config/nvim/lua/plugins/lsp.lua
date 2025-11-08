-- set up lsp 

function sdubs_configure_lsp()
	-- Advertise that nvim-cmp-lsp addes extra capabilities
	local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

	-- Only map fancy LSP keybinds when LSP is available
	local on_attach = function(client_id, bufnr)
		if bufnr == nil then
			bufnr = 0
		end
		local client = vim.lsp.get_client_by_id(client_id)
		local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
		local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

		--Enable completion triggered by <c-x><c-o>
		vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'

		-- Mappings.
		local opts = { noremap=true, silent=true }
		local commander = require('commander')
		commander.add({
		-- See `:help vim.lsp.*` for documentation on any of the below functions
			{
					desc = '(LSP) Go to Declaration',
					cmd = vim.lsp.buf.declaration,
					keys = {'n', 'gD', opts}
			},
			{
					desc = '(LSP) Go to Definition',
					cmd = vim.lsp.buf.definition,
					keys = {
						{'n', 'gd', opts},
						{'n', '<C-]>', opts},
					}
			},
			{
					desc = '(LSP) Go to Implementation',
					cmd = vim.lsp.buf.implementation,
					keys = {'n', 'gi', opts}
			},
			{
					desc = '(LSP) Show hover documentation',
					cmd = vim.lsp.buf.hover,
					keys = {
						{'n', 'K', opts},
						{'v', 'K', opts},
					}
			},
			{
					desc = '(LSP) Show signature help',
					cmd = vim.lsp.buf.hover,
					keys = {'n', '<C-k>', opts}
			},
			{
					desc = '(LSP) Show type definition',
					cmd = vim.lsp.buf.type_definition,
					keys = {'n', '<leader>K', opts}
			},
			{
					desc = '(LSP) Previous error',
					cmd = vim.diagnostic.goto_prev,
					keys = {'n', '[d', opts}
			},
			{
					desc = '(LSP) Next error',
					cmd = vim.diagnostic.goto_next,
					keys = {'n', ']d', opts}
			},
			{
					desc = '(LSP) Rename',
					cmd = vim.lsp.buf.rename,
					keys = {'n', '<leader>rn', opts}
			},
			{
					desc = '(LSP) Code action',
					cmd = vim.lsp.buf.code_action,
					keys = {'n', '<leader>ca', opts}
			},
			{
					desc = '(LSP) Code action on selection',
					cmd = function() vim.lsp.buf.range_code_action() end,
					keys = {'v', '<leader>ca', opts}
			},

			-- These use Telescope
			{
					desc = '(LSP) Go to symbol in workspace',
					cmd = '<CMD>Telescope lsp_dynamic_workspace_symbols<CR>',
					keys = {'n', 'gs', opts}
			},
			{
					desc = '(LSP) Go to symbol in document',
					cmd = '<CMD>Telescope lsp_document_symbols<CR>',
					keys = {'n', 'go', opts}
			},
			{
					desc = '(LSP) Go to references',
					cmd = '<CMD>Telescope lsp_references<CR>',
					keys = {'n', 'gr', opts}
			},
		})

		-- Set fancy symbols for LSP diagnostic symbols
		vim.fn.sign_define("LspDiagnosticsSignError", {text = "❌", numhl = "LspDiagnosticsDefaultError"})
		vim.fn.sign_define("DiagnosticSignError", {text = "❌", numhl = "LspDiagnosticsDefaultError"})
		vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "⚠", numhl = "LspDiagnosticsDefaultWarning"})
		vim.fn.sign_define("DiagnosticSignWarning", {text = "⚠", numhl = "LspDiagnosticsDefaultWarning"})
		vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "🛈", numhl = "LspDiagnosticsDefaultInformation"})
		vim.fn.sign_define("DiagnosticSignInformation", {text = "🛈", numhl = "LspDiagnosticsDefaultInformation"})
		vim.fn.sign_define("LspDiagnosticsSignHint", {text = "💡", numhl = "LspDiagnosticsDefaultHint"})
		vim.fn.sign_define("DiagnosticSignHint", {text = "💡", numhl = "LspDiagnosticsDefaultHint"})

		-- Set up as-you-type method signature help
		require('lsp_signature').on_attach()
	end

	vim.api.nvim_create_autocmd('LspAttach', {
		group = vim.api.nvim_create_augroup('my.lsp', {}),
		callback = function(args) 
			on_attach(args.data.client_id, args.buf)
		end
	})

end


return {
	{ -- helpful for seeing/navigating diagnostics
		"folke/trouble.nvim",
		dependencies = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup { }
			local commander = require('commander')
			commander.add({
				{
						desc = '(LSP) Show errors',
						cmd = '<CMD>Trouble<CR>'
				}
			})
		end
	},
	-- use 'simrat39/symbols-outline.nvim'
	'ray-x/lsp_signature.nvim',

	-- Install nvim-cmp and various sources
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/vim-vsnip",
			"hrsh7th/cmp-vsnip",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lsp",
			"ray-x/cmp-treesitter",
			'rafamadriz/friendly-snippets',
		},
		config = function()
			sdubs_configure_lsp()
			local cmp = require('cmp')
			local feedkey = function(key, mode) 
				vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
			end
			cmp.setup({
				snippet = {
					expand = function(args)
						vim.fn["vsnip#anonymous"](args.body)
					end
				},
				mapping = cmp.mapping.preset.insert({
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					['<Tab>'] = cmp.mapping(function(fallback)
						if vim.fn["vsnip#available"](1) == 1 then
							feedkey('<Plug>(vsnip-expand-or-jump)', '')
						else 
							fallback()
						end
					end, {"i", "s"}),
					['<S-Tab>'] = cmp.mapping(function(fallback)
						if vim.fn["vsnip#jumpable"](-1) == 1 then
							feedkey('<Plug>(vsnip-jump-prev)', '')
						else
							fallback()
						end
					end, {"i", "s"}),
					['<C-Space>'] = cmp.mapping.complete()
				}),
				sources = cmp.config.sources({
					{name = "nvim_lsp"},
					{name = 'vsnip'},
					{name = "treesitter"},
					{name = "buffer"},
					{name = "path"},
				})
			})
			-- cmp.setup.cmdline(':', {
			-- 	mapping = cmp.mapping.preset.cmdline(),
			-- 	sources = cmp.config.sources({}, {
			-- 		{ name = 'cmdline' }
			-- 	})
			-- })
		end
	},
}
