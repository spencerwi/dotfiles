vim.g.mapleader = ',' -- This has to be set before lazy fires up to manage plugins
require('lazy_plugins')
vim.cmd('source ~/.vimrc')
