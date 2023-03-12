require("atomicvim.plugins-setup")
require("atomicvim.core.options")
require("atomicvim.plugins.treesitter")
require("atomicvim.core.keymaps")
require("atomicvim.core.colorscheme")
require("atomicvim.plugins.comment")
require("atomicvim.plugins.nvim-tree")
require("atomicvim.plugins.lualine")
require("atomicvim.plugins.telescope")
require("atomicvim.plugins.nvim-cmp")
require("atomicvim.plugins.lsp.mason")
require("atomicvim.plugins.lsp.lspsaga")
--[[ require("atomicvim.plugins.lsp.lspconfig") ]]
require("atomicvim.plugins.fugitive")
require("atomicvim.plugins.lsp.null-ls")
require("atomicvim.plugins.harpoon")
require("atomicvim.plugins.twilight")
require("atomicvim.plugins.rust-tools")
require("atomicvim.core.utils")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})

function R(name)
	require("plenary.reload").reload_module(name)
end

autocmd("TextYankPost", {
	group = yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 40,
		})
	end,
})
