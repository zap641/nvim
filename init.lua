-- followed https://dev.to/vonheikemen/simple-neovim-config-572n to make config

-- line numbers
vim.o.number = true
vim.o.relativenumber = true

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- linewrap
vim.o.wrap = false

-- slash search
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.hlsearch = false

-- colorscheme
-- for more see https://github.com/vim/colorschemes/tree/master/colors
vim.cmd.colorscheme('retrobox')

vim.g.mapleader = " "

vim.keymap.set('n', '<leader>fb', '<cmd>files<cr>:buffer ', {desc = 'Search open files'})
vim.keymap.set('n', '<leader>e', '<cmd>:Ex<cr>', {desc = 'Search open files'})
