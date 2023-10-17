


-- markdown highlighting bold		daskdjsakdjsakldjaskldjaskldjasdsarfejskfes WTF https://stackoverflow.com/questions/10964681/enabling-markdown-highlighting-in-vim
vim.cmd([[au BufNewFile,BufRead *.md setf markdown]])
vim.cmd([[au BufNewFile,BufRead *.md set syntax=markdown]])

vim.cmd([[au BufNewFile,BufRead *.markdown setf markdown]])
vim.cmd([[au BufNewFile,BufRead *.markdown set syntax=markdown]])



-- fix spliting ??
vim.opt.splitbelow = true
vim.opt.splitright = true

-- use system clipboard  https://stackoverflow.com/questions/75548458/copy-into-system-clipboard-from-neovim
vim.opt.clipboard = "unnamedplus"


-- dont copy deleted text when pasting
vim.keymap.set("v", "p", '"_dp')

-- keep visual select on indent
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")



-- ensure expandtab is always false (some plugins change it because FU)
-- not sure what was changig softtabstop and shiftwidth (only effected HTML)
vim.cmd([[ au BufNewFile,BufRead,BufEnter * set tabstop=4]])
vim.cmd([[ au BufNewFile,BufRead,BufEnter * set softtabstop=4]])
vim.cmd([[ au BufNewFile,BufRead,BufEnter * set shiftwidth=4]])
vim.cmd([[ au BufNewFile,BufRead,BufEnter * set noexpandtab]])
