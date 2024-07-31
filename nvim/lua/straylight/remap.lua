local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- open file explorer
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- resize with vim movement 
keymap("n", "<C-r>j", ":resize -2<CR>", opts)
keymap("n", "<C-r>k", ":resize +2<CR>", opts)
keymap("n", "<C-r>h", ":vertical resize -2<CR>", opts)
keymap("n", "<C-r>l", ":vertical resize +2<CR>", opts)

-- navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- continuous indents 
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- keeps previous yank when pasting
keymap("v", "p", '"_dP', opts)
