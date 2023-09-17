
--- linenumbers
vim.opt.nu = true
vim.opt.relativenumber = true


--- tabs
vim.opt.tabstop = 4
-- vim.opt.softtabstop = 4
-- vim.opt.shiftwidth = 4
vim.opt.expandtab = false --use spaces instead of tab (evil)
-- vim.opt.smartindent = true


--- backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true


--- search
vim.opt.hlsearch = true		--highlighting
vim.opt.incsearch = true	-- incremental search
vim.opt.ignorecase = true
vim.opt.smartcase = true --ignore case when lowercase; requires ignorecase



-- MISC
vim.cmd([[ autocmd InsertEnter * norm zz ]])

vim.opt.scrolloff = 8   -- num of spaces when scrolling begins
vim.opt.termguicolors = true
vim.opt.wrap = false --line wrap

vim.opt.cursorline = true
-- highlight CursorLine ctermbg=Yellow cterm-bold guibg=#2b2b2b
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2b2b2b",}) --cterm = "bold" })

vim.opt.wildmode = "longest:full,full"
-- vim.opt.wildmode = "lastused,longest,full"
-- vim.opt.wildmode = "full"



