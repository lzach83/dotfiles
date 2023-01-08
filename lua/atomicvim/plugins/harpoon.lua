local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
-- Terminal commands
-- ueoa is first through fourth finger left hand home row.
-- This just means I can crush, with opposite hand, the 4 terminal positions
--
-- These functions are stored in harpoon.  A plugn that I am developing
keymap("n", "<Leader>a", [[<Cmd>lua require("harpoon.mark").add_file()<CR>]], opts)
keymap("n", "<Leader>tm", [[<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>]], opts)

-- keymap("<leader>a", function() require("harpoon.mark").add_file() end, opts)
-- keymap("<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, opts)

-- keymap("<C-h>", function() require("harpoon.ui").nav_file(1) end, opts)
-- keymap("<C-t>", function() require("harpoon.ui").nav_file(2) end, opts)
-- keymap("<C-n>", function() require("harpoon.ui").nav_file(3) end, opts)
-- keymap("<C-s>", function() require("harpoon.ui").nav_file(4) end, opts)
