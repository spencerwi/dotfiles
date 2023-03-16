return {
	{
		'nvim-treesitter/nvim-treesitter', 
		build = ':TSUpdate',
		config = function()
			vim.o.foldmethod = 'expr'
			vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
			vim.o.foldlevel = 9999

			require('nvim-treesitter.configs').setup {
				sync_install = false,
				ensure_installed = {
					"bash",
					"c",
					"clojure",
					"cmake",
					"css",
					"c_sharp",
					"dockerfile",
					"dot",
					"git_rebase",
					"gitattributes",
					"gitcommit",
					"gitignore",
					"go",
					"gomod",
					"haskell",
					"hcl",
					"help",
					"html",
					"java",
					"javascript",
					"jq",
					"jsdoc",
					"json",
					"json5",
					"jsonc",
					"julia",
					"kotlin",
					"latex",
					"lua",
					"make",
					"markdown",
					"markdown_inline",
					"ocaml",
					"ocaml_interface",
					"ocamllex",
					"pascal",
					"php",
					"phpdoc",
					"python",
					"ruby",
					"rust",
					"scala",
					"scss",
					"sql",
					"svelte",
					"tsx",
					"typescript",
					"toml",
					"vim",
					"yaml",
					"zig",
				},
				highlight = { 
					enable = true,
					-- Disable on really big files, because tree-sitter is both slow and synchronous
					disable = function(lang, buf) 
						local max_filesize = 4 * 1024 * 1024 -- 4 MB
						local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and stats and stats.size > max_filesize then
							return true
						end
					end
				},
				indent = { 
					enable = true,
					-- Disable on really big files, because tree-sitter is both slow and synchronous
					disable = function(lang, buf) 
						local max_filesize = 4 * 1024 * 1024 -- 4 MB
						local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and stats and stats.size > max_filesize then
							return true
						end
					end
				},
			}

			-- require("nvim-treesitter.configs").setup {
			-- 	playground = {
			-- 		enable = true,
			-- 		disable = {},
			-- 		updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
			-- 		persist_queries = false, -- Whether the query persists across vim sessions
			-- 		keybindings = {
			-- 			toggle_query_editor = 'o',
			-- 			toggle_hl_groups = 'i',
			-- 			toggle_injected_languages = 't',
			-- 			toggle_anonymous_nodes = 'a',
			-- 			toggle_language_display = 'I',
			-- 			focus_language = 'f',
			-- 			unfocus_language = 'F',
			-- 			update = 'R',
			-- 			goto_node = '<cr>',
			-- 			show_help = '?',
			-- 		},
			-- 	}
			-- }
			local command_center = require('command_center')
			command_center.add({
				{
						description = "Navigate outline",
						cmd = "<CMD>Telescope treesitter<CR>",
						keybindings = {'n', 'gO', {noremap=true, silent=true} }
				}
			})
		end
	},

	-- Show current Treesitter context (like breadcrumbs) if available
	{
		'nvim-treesitter/nvim-treesitter-context',
		dependencies = { 
			{"nvim-treesitter/nvim-treesitter"}
		},
		config = function()
			require('treesitter-context').setup({})
		end
	},

	-- treesitter-powered refactoring
	{
		"ThePrimeagen/refactoring.nvim",
		dependencies = {
			{"nvim-lua/plenary.nvim"},
			{"nvim-treesitter/nvim-treesitter"},
			{'gfeiyou/command-center.nvim'},
		},
		config = function()
			require('refactoring').setup({})
			-- It's safe to assume there's telescope, since there's command-center.nvim
			require('telescope').load_extension('refactoring')
			local command_center = require('command_center')
			command_center.add({
				{
					description = "Refactor selection...",
					cmd = "<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",
					keybindings = {'v', '<leader>rr', {noremap=true, silent=true}}
				}
			})
		end
	}
}
