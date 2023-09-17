-- https://github.com/mattn/emmet-vim
-- <C-y> leader; (,) to expand
return{
	"mattn/emmet-vim",
	config = function()
		-- vim.cmd([[ let g:user_emmet_leader_key = '<C-e>' ]])
		vim.cmd([[ let g:user_emmet_install_global = 0 ]])
		vim.cmd([[ autocmd FileType html,css EmmetInstall ]])
	end,
	lazy = true,
	event = {
		"BufEnter *.html",
		"BufEnter *.css",
	},
}
