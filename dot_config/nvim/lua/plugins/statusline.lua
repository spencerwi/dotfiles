return {
	{
		'hoob3rt/lualine.nvim',
		dependencies = {'kyazdani42/nvim-web-devicons', lazy = true},
		config = function()
			require('lualine').setup {
				options = {
					icons_enabled = true,
					theme = require('colorscheme').lualine_theme_name,
				},
				sections = {
					lualine_a = {
						'mode', 
						{ 'diagnostics', sources = {'nvim_lsp'} }
					},
					lualine_b = {'branch'},
					lualine_c = {'filename'},
					lualine_d = {'encoding', 'fileformat', 'filetype'},
					lualine_e = {'progress'},
					lualine_f = {'location'},
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = {'filename'},
					lualine_d = {'location'},
					lualine_e = {},
					lualine_f = {},
				}
			}
		end
	},
	'plexigras/promptline.vim', -- for exporting to shells
}
