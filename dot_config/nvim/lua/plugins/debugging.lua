return {
	{ -- Compiler plugin, to make it easier to start debugging sessions from within nvim
		"Zeioth/compiler.nvim",
		cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
		dependencies = { "stevearc/overseer.nvim", "nvim-telescope/telescope.nvim" },
		opts = {},
		init = function()
			local commander = require('commander')
			commander.add({
				{
					desc = '(Compiler) Open Compiler pane',
					cmd = '<CMD>CompilerOpen<CR>',
					keys = {'n', '<leader>co', keymap_opts}
				},
				{
					desc = '(Compiler) Toggle Compiler results',
					cmd = '<CMD>CompilerToggleResults<CR>'
				},
				{
					desc = '(Compiler) Redo last compilation',
					cmd = '<CMD>CompilerRedo<CR>',
				},
				{
					desc = '(Compiler) Stop compilation',
					cmd = '<CMD>CompilerStop<CR>',
				}
			})
		end
	},
	{ -- The task runner used by the compiler plugin
		"stevearc/overseer.nvim",
		commit = "6271cab7ccc4ca840faa93f54440ffae3a3918bd",
		cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
		opts = {
			task_list = {
				direction = "bottom",
				min_height = 25,
				max_height = 25,
				default_detail = 1
			},
		},
	},
	{ -- Debug Anything Protocol adapter
		'mfussenegger/nvim-dap',
		dependencies = {'FeiyouG/commander.nvim'},
		init = function() 
			local dap = require('dap')

			dap.adapters.lldb = {
				type = 'executable',
				command = '/usr/bin/lldb-vscode-15',
				name = 'lldb'
			}

			dap.adapters.rust_lldb = {
				type = 'executable',
				command = '/home/spencerwi/.cargo/bin/rust-lldb',
				name = 'rust_lldb'
			}

			
			dap.adapters.coreclr = {
				type = 'executable',
				command = '/home/spencerwi/bin/netcoredbg',
				args = {'--interpreter=vscode'}
			}
			dap.adapters.netcoredbg = {
				type = 'executable',
				command = '/home/spencerwi/bin/netcoredbg',
				args = {'--interpreter=vscode'}
			}

			dap.configurations.cpp = {
				{
					name = 'Launch',
					type = 'lldb',
					request = 'launch',
					program = function()
						return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
					end,
					cwd = '${workspaceFolder}',
					stopOnEntry = false,
					args = {}
				}
			}
			dap.configurations.c = dap.configurations.cpp
			dap.configurations.rust = {
				{
					name = 'Attach to process',
					type = 'lldb',
					request = 'attach',
					pid = require('dap.utils').pick_process,
					{}
				}
			}
			dap.configurations.fsharp = {
				{
					type = "coreclr",
					name = "launch - netcoredbg",
					request = "launch",
					program = function()
						return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
					end,
				},
			}

			-- dap.configurations.rust = dap.configurations.cpp

			-- Nicer breakpoint marker
			vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
			vim.fn.sign_define('DapStopped', {text='➤', texthl='', linehl='', numhl=''})

			local keymap_opts = {noremap = true, silent = true}
			local commander = require('commander')
			commander.add({
				{
					desc = '(Debug) Run',
					cmd = dap.continue,
					keys = {'n', '<leader>dr', keymap_opts}
				},
				{
					desc = '(Debug) Stop debugging',
					cmd = dap.terminate,
					keys = {'n', '<leader>dn', keymap_opts}
				},
				{
					desc = '(Debug) Up in stack',
					cmd = dap.up,
					keys = {'n', '<leader>du', keymap_opts}
				},
				{
					desc = '(Debug) Down in stack',
					cmd = dap.down,
					keys = {'n', '<leader>dd', keymap_opts}
				},
				{
					desc = '(Debug) Step Over',
					cmd = dap.step_over,
					keys = {'n', '<leader>dn', keymap_opts}
				},
				{
					desc = '(Debug) Step Into',
					cmd = dap.step_into,
					keys = {'n', '<leader>di', keymap_opts}
				},
				{
					desc = '(Debug) Toggle Breakpoint',
					cmd = dap.toggle_breakpoint,
					keys = {'n', '<leader>db', keymap_opts}
				},
				{
					desc = '(Debug) Conditional Breakpoint',
					cmd = function()
						dap.set_breakpoint(vim.fn.input('Breakpoint condition: '))
					end,
					keys = {'n', '<leader>dcb', keymap_opts}
				},
				{
					desc = '(Debug) Open REPL',
					cmd = dap.repl.open,
					keys = {'n', '<leader>de', keymap_opts}
				}
			})
		end
	},
	{ -- UI for debugging 
		"rcarriga/nvim-dap-ui", 
		dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
		init = function()
			require('dapui').setup()
			local dap, dapui = require("dap"), require("dapui")
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end
		end
	}
}
