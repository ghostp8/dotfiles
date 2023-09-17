-- https://github.com/nvim-tree/nvim-tree.lua
return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1



		--configure nvim-tree
		require("nvim-tree").setup({
			sort_by = "case_sensitive",
			hijack_cursor = true,
			sync_root_with_cwd = true,
			respect_buf_cwd = true,

			view = {
				width = 35,
				adaptive_size = false,
			},

			renderer = {
				highlight_git = true,
				highlight_opened_files = "none",
				indent_width = 1,
				symlink_destination = true,
			},

			filters = {dotfiles = true,},

			actions = {
				change_dir = {
					enable = true,
					global = true,
				},
				open_file={
					window_picker = {
						enable=false,
					},
					quit_on_open = true,
				},
			},

			git = {
				ignore = false,
			},
		})



		--set keymaps
		-- vim.keymap.set("n", "<leader>f", "<cmd>NvimTreeToggle<CR>")
		vim.keymap.set("n", "<leader>f", "<cmd>NvimTreeFindFile<CR>")



	end
}
