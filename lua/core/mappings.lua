--leader is spacebar
vim.g.mapleader = " "

--enter file view ("project view")
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

-- Moves highlighted text up or down lines
vim.keymap.set("v", "J", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")

-- So Ctrl C keep edits in vertical edit mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Format current file to standard LSP formatting
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format)

-- Replaces word underneath curser throughout the whole file
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Terminal mode
vim.keymap.set('t', ':q', "<C-Bslash><C-n>")
vim.keymap.set('t', '<C-c>', "<C-Bslash><C-n>:q<CR>")
vim.keymap.set('t', '<esc>', '<C-Bslash><C-N>:q<CR>')
