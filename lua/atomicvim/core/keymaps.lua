local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.mapleader = " "

vim.cmd("nmap <F1> :echo <CR>")
vim.cmd("imap <F1> <C-o>:echo <CR>")

keymap("i", "jj", "<ESC>", opts)
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

-- telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- find files within current working directory, respects .gitignore
keymap("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts) -- find string in current working directory as you type
keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts) -- find string under cursor in current working directory
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts) -- list open buffers in current neovim instance
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts) -- list available help tags

--Keep cursor in middle when moving half screens
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

--Keep current copy register pastes over current highlight
keymap("x", "<Leader>p", '"_dP', opts)

--Adds leader(y/d) to add selection to system clipboard
keymap("n", "<Leader>y", '"+y', opts)
keymap("v", "<Leader>y", '"+y', opts)
keymap("n", "<Leader>Y", '"+Y', opts)

keymap("v", "<Leader>d", '"_d', opts)
keymap("n", "<Leader>d", '"_d', opts)

keymap("n", "Q", "<nop>", opts)

keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)
