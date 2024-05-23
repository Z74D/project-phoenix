local api = vim.api
local cmd = vim.cmd
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.o.relativenumber = true


local opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

--notify
--vim.notify = require("notify")

--Keykeymappings
--For opening NvimTree
keymap('n', '<Leader>tt', ':NvimTreeOpen<CR>', opts)
--For closing NvimTree 
keymap('n', '<Leader>ty', ':NvimTreeClose<CR>', opts)
--For toggling NvimTree
keymap('n', '<Leader>tr', ':NvimTreeToggle<CR>', opts)

--For saving 
keymap('n', '<Leader>w', ':w<CR>', opts)
--For exiting 
keymap('n', '<Leader>q', ':q<CR>', opts)
--For saving then quiting
keymap('n', '<Leader>wq', ':wq<CR>', opts)
--For PackerSync
keymap('n', '<Leader>we', ':PackerSync<CR>', opts)



--To call all packages
require('packages')
--require('nightfox-theme')
require('mason-lsp')
require('coc-nvim')
require('live-server')
require('colorizer-config')
require('treesitter')
--require('autopairs')
require('lspconfig')
require('lualine-config')
--require('format-config')
require('nvimtree-config')
require('telescope-config')
require('snippet-config')
require('onedark-theme')
require('notify-config')
require('lazygit')


