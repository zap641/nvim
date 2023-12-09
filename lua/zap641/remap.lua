--leader is spacebar
vim.g.mapleader = " "

--enter file view ("project view")
vim.keymap.set("n", "<leader>et", vim.cmd.Ex)

-- Moves highlighted text up or down lines
vim.keymap.set("v", "J", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")

-- Keeps curser centred
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Keeps paste buffer in visual mode
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copies/Deletes to system clipboard/register instead of neovims'
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- So Ctrl C keep edits in vertical edit mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Don't want to press Q
vim.keymap.set("n", "Q", "<nop>")

-- Format current file to standard LSP formatting
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quickfix commands for compilers
vim.keymap.set("n", "<C-Down>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-Up>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>Down", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>Up", "<cmd>lprev<CR>zz")

-- Replaces word underneath curser throughout the whole file
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Terminal mode
vim.keymap.set('t', '<C-c>', "<C-Bslash><C-n>")
vim.keymap.set('t', '<esc>', '<C-Bslash><C-N>')
