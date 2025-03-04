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
						adapter = 'openrouter_gemini',
						tools = {
							["mcp"] = {
								callback = require("mcphub.extensions.codecompanion"),
								description = "Call tools and resources from the MCP Servers",
								opts = {
									-- user_approval = true,
									requires_approval = true
								}
							}
						}
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
								url = 'https://openrouter.ai/api/v1/chat/completions',
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
			"FeiyouG/commander.nvim",
			"ravitemer/mcphub.nvim"
		},
	},
	{
		"ravitemer/mcphub.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",  -- Required for Job and HTTP requests
		},
		build = "npm install -g mcp-hub@latest", -- Installs required mcp-hub npm module
		config = function()
			require("mcphub").setup({
				-- Required options
				port = 3000,  -- Port for MCP Hub server
				config = vim.fn.expand("~/.config/mcpservers.json"),  -- Absolute path to config file

				-- Optional options
				on_ready = function(hub)
					-- Called when hub is ready
				end,
				on_error = function(err)
					-- Called on errors
				end,
				shutdown_delay = 0, -- Wait 0ms before shutting down server after last client exits
				log = {
					level = vim.log.levels.WARN,
					to_file = false,
					file_path = nil,
					prefix = "MCPHub"
				},
			})
		end
	}
}
