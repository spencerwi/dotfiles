return {
	"numToStr/FTerm.nvim",
	dependencies = {'FeiyouG/commander.nvim'},
	config = function()
		local commander = require('commander')
		commander.add({
			{
				desc = 'Toggle floating terminal',
				cmd = '<cmd>lua require("FTerm").toggle()<CR>',
				keys = {'n', 'gt', {noremap=true, silent=true}}
			}
		})
	end
}
