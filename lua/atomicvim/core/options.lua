local opt = vim.opt

--Line numbers
opt.relativenumber = true
opt.number = true

--tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

--line wrapping
opt.wrap = false

--search settings
opt.ignorecase = true
opt.smartcase = true

--appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

--backspace

--clipboard
opt.clipboard = ""

--split windows
opt.splitright = true
opt.splitbelow = true

opt.cmdheight = 1
--makes - a word
opt.iskeyword:append("-")

--undos
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

--scroll
opt.scrolloff = 8
opt.signcolumn = "yes"

--updates
opt.updatetime = 50

opt.colorcolumn = "80"
