
--- CORE
require("cat2.fixes")
require("cat2.set")
require("cat2.remap")



--- PLUGINS
require("cat2.lazy")

--- COLORSCHEME
-- require("cat2.pluginsMisc.colorscheme")
vim.cmd([[ source $HOME/.config/nvim/lua/cat2/themes/onedark.vim ]])

require("cat2.pluginsMisc.nvim-tree")
require("cat2.pluginsMisc.obsidian")
require("cat2.pluginsMisc.gitsigns")
require("cat2.pluginsMisc.lspZero")


