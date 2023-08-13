local ok, _ = pcall(vim.cmd, 'colorscheme everforest')
if not ok then
  vim.cmd 'colorscheme default'
end

--

--[[ require('aurora').setup({ ]]
--[[   contrast_dark = 'soft', -- 'hard'|'medium'|'soft' ]]
--[[   override_terminal = true, ]]
--[[   style = { ]]
--[[     search = { reverse = true }, ]]
--[[   }, ]]
--[[   overrides = { }, -- add custom overrides ]]
--
--[[ }) ]]
--
--[[ require('noirbuddy').setup { ]]
--[[   colors = { ]]
--[[     primary = '#D8BFD8', ]]
--[[     secondary = '#87CEEB', ]]
--[[   }, ]]
--[[   preset = 'miami-nights', ]]
--[[ } ]]
-- Default options:
