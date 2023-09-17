-- https://github.com/tpope/vim-commentary
-- use gc as command (allows vim motions)
return{
	"tpope/vim-commentary",
	config = function()
		vim.keymap.set("n", "<C-c>", "<CMD>Commentary<CR>")
		vim.keymap.set("v", "<C-c>", ":Commentary<cr>gv")
	end,
}
