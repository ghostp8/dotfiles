
--- leader key
vim.g.mapleader = " "



--- diable autocomment
vim.keymap.set("n", "<leader>c", ":set formatoptions-=cro<CR>")
vim.keymap.set("n", "<leader><S-c>", ":set formatoptions+=cro<CR>")


---make file executable
vim.keymap.set("n", "<leader>x", "<CMD>!chmod +x<CR>", {silent = true})


--- center cursor when jumping
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")



--- word search
--vim.keymap.set("n", "</>", ":/\<")
vim.cmd([[ nnoremap / /\<]])

--- replace word
--vim.keymap.set("n", "C-/", ":%s/\<\>//gI<Left><Left><Left><Left><Left>")
vim.cmd([[ nnoremap <C-_> :%s/\<\>//gI<Left><Left><Left><Left><Left><Left>]])

--- clear highlighting
vim.keymap.set("n", "?", "<CMD>noh<cr>")



--- remap split change
vim.keymap.set("n", "<C-h>", "<C-W>h")
vim.keymap.set("n", "<C-j>", "<C-W>j")
vim.keymap.set("n", "<C-k>", "<C-W>k")
vim.keymap.set("n", "<C-l>", "<C-W>l")


--- change buffer to tab
vim.keymap.set("n", "<Tab>", "<CMD>bnext<cr>")
vim.keymap.set("n", "<S-Tab>", "<CMD>bprevious<cr>")

--- S-w to change buffer and list all buffers
vim.keymap.set("n", "<S-w>", "<CMD>ls<CR>:b<space>")
--- M-w delete buffer
vim.keymap.set("n", "<M-w>", "<CMD>bd<CR>")



--- move line with alt in normal and visual https://vim.fandom.com/wiki/Moving_lines_up_or_down#Move_command
vim.keymap.set("n", "<M-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<M-k>", ":m .-2<CR>==")
vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv")


--- horizontal scrolling https://www.reddit.com/r/vim/comments/5n34zf/hacking_horizontal_scroll_in_terminal_vim/
vim.keymap.set("n", "<C-ScrollWheelUp>", "<ScrollWheelLeft>")
vim.keymap.set("n", "<C-2-ScrollWheelUp>", "<2-ScrollWheelLeft>")
vim.keymap.set("n", "<C-3-ScrollWheelUp>", "<3-ScrollWheelLeft>")
vim.keymap.set("n", "<C-4-ScrollWheelUp>", "<4-ScrollWheelLeft>")

vim.keymap.set("n", "<C-ScrollWheelDown>", "<ScrollWheelRight>")
vim.keymap.set("n", "<C-2-ScrollWheelDown>", "<2-ScrollWheelRight>")
vim.keymap.set("n", "<C-3-ScrollWheelDown>", "<3-ScrollWheelRight>")
vim.keymap.set("n", "<C-4-ScrollWheelDown>", "<4-ScrollWheelRight>")

vim.keymap.set("n", "<M-h>", "<ScrollWheelLeft>")
vim.keymap.set("n", "<M-l>", "<ScrollWheelRight>")

--- vertical scrolling in normal, insert and visual select
vim.keymap.set("n", "<C-M-j>", "<ScrollWheelDown>")
vim.keymap.set("n", "<C-M-k>", "<ScrollWheelUp>")
vim.keymap.set("i", "<C-M-j>", "<ScrollWheelDown>")
vim.keymap.set("i", "<C-M-k>", "<ScrollWheelUp>")
vim.keymap.set("v", "<C-M-j>", "<ScrollWheelDown>")
vim.keymap.set("v", "<C-M-k>", "<ScrollWheelUp>")



