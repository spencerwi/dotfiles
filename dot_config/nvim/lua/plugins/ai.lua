return {
	{
		"olimorris/codecompanion.nvim",
		config = function()
			require('codecompanion').setup({
				opts = {
					log_level = 'DEBUG'
				},
				strategies = {
					chat = {
						adapter = 'openrouter_gemini'
					},
					inline = {
						adapter = 'openrouter_gemini'
					}
				},
				adapters = {
					openrouter_gemini = function() 
						return require('codecompanion.adapters').extend('openai_compatible', {
							name = 'openrouter_gemini',
							url = 'https://openrouter.ai/api/v1/chat/completions',
							env = {
								api_key = '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'
							},
							schema = {
								model = {
									default = 'google/gemini-2.0-flash-exp:free'
								}
							}
						})
					end
				}
			})
			local commander = require('commander')
			commander.add({
				{
					desc = '(AI) Chat with CodeCompanion',
					cmd = '<CMD>CodeCompanionChat<CR>',
					keys = {'n', '<leader>cp', {silent = true}}
				},
				{
					desc = '(AI) Use CodeCompanion action',
					cmd = '<CMD>CodeCompanionActions<CR>',
				},
			})
		end,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"FeiyouG/commander.nvim"
		},
	}
}
