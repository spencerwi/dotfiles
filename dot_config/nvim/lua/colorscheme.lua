local M = {}
-- M.lazy_spec = { 
-- 	'folke/tokyonight.nvim',
-- 	config = function()
-- 		require('tokyonight').setup({
-- 			style = "night",
-- 			styles = {
-- 				comments = { italic = false }
-- 			}
-- 		})
-- 		vim.cmd('colors tokyonight')
-- 	end
-- }
M.lazy_spec = { 
	'catppuccin/nvim',
	name = 'catppuccin',
	config = function()
		vim.cmd('colors catppuccin')
	end
}
M.lualine_theme_name = 'catppuccin'
return M
