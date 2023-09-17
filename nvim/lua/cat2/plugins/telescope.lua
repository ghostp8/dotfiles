--https://github.com/nvim-telescope/telescope.nvim#pickers
return {
	"nvim-telescope/telescope.nvim",
	dependancies = {"nvim-lua/plenary.nvim"},

	config = function ()
		vim.keymap.set("n", "<leader>s", "<CMD>Telescope find_files<CR>")
		vim.keymap.set("n", "<leader><S-w>", "<CMD>Telescope buffers<CR>")
		vim.keymap.set("n", "<leader><C-s>", "<CMD>Telescope live_grep<CR>")

		-- [x] find_files
		-- git_files
		-- [x] live_grep
		--
		-- [x] buffers
		-- tags; need to run Ctags
		-- spell suggest
		--
		-- LSP PICKERS
		-- lsp_references
		-- lsp_document_symbols
		-- lsp_workspace_symbols
		-- lsp_dynamic_workspace_symbols
		-- lsp_implementations; goto implementation or show options in telescope
		-- lsp_definitions; goto deginition or show options in telescope
		-- lsp_type_definitions; definition of type of word under cursor
		--
		-- Git PICKERS
		-- git_commits
		-- git_branches
		-- git_status
		-- git_stash
		--
		-- MISC PICKERS
		-- builtin.builtin
		-- obsidian quickswitch
	end,
}
