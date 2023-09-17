
-- bootstrap lazy plugin manager

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{import = "cat2.plugins" }},
	{
		checker = {
			enabled = true,
			notify = false,
		},
		change_detection = { notify=false, },
	}
)

-- How To Use lazy.nvim For A Simple And Amazing Neovim Config; JoseanMartinez
-- https://www.youtube.com/watch?v=6mxWayq-s9I&list=TLPQMDQwOTIwMjOEh9gPMTMl-w&index=6

-- EXAMPLE
-- return {
--	opts = { --(exuivelent to) require("pluginName").setup(opts)
--		Options = {
--			mode = "tabs",
--			separator_style = "slant",
--		},
--	},
--	config = true -- runs require("pluginName").setup() (apparently)
--	config = function() -- else
--		lua code run on plugin load
--	end,
-- }
