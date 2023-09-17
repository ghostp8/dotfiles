-- https://github.com/preservim/tagbar
-- dependancies; Ctags
return{
	--needs to have ctags installed (pacman)
	"preservim/tagbar",
	version = "70fix",
	config = function()
		--tagbar_position = "left" not working REEEEEEEEEEEEfjsdklfjsdlkfjsklfjsl
		-- FINALLY; search for tagbar_position in manual; https://github.com/preservim/tagbar/blob/master/doc/tagbar.txt
		-- vim.cmd([[ let g:tagbar_position = "topleft vertical" ]])
		vim.g.tagbar_position = 'topleft vertical'

		vim.keymap.set("n", "<leader><S-f>", "<CMD>TagbarOpenAutoClose<CR>")

		vim.cmd([[ let g:tagbar_width = 35 ]])
	end,
}
