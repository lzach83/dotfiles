local opts = { noremap = true, silent = true }


-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.mapleader = " "


--general keymaps
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

keymap("i", "jk", "<ESC>", opts)
keymap("n", "<leader>nh", ":nohl<CR>", opts)
keymap("n", "x", '"_x', opts)
keymap("n", "<leader>+", "<C-a>", opts)
keymap("n", "<leader>-", "<C-x>", opts)

--window splits
keymap("n", "<leader>sv", "<C-w>v", opts) --Split vertically
keymap("n", "<leader>se", "<C-w>=", opts) --Makes windows equal width
keymap("n", "<leader>sx", ":close<CR>", opts) --close current split
