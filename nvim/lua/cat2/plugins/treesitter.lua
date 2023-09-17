-- https://github.com/nvim-treesitter/nvim-treesitter
return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"p00f/nvim-ts-rainbow",
		--"nvim-treesitter/playground", --depricated; part of nvim (Inspect; InspectTree)
	},
	config = function()
		-- vim.cmd.TSUpdate
		require'nvim-treesitter.configs'.setup {
		-- Instaled Parsers
			ensure_installed = {"python","c_sharp","html","javascript","bash","lua","vim","markdown","markdown_inline"},
			-- ignore_install={},
			sync_install = true,
			auto_install = true,

			-- Highlighting
			highlight={
				enable=true,
				-- disable={},
				additional_vim_regex_highlighting = false,
			},

			-- Indentation
			indent={
				enable=true,
				--disable={},
			},

			-- Incremental selection
			incremental_selection={
				enable=true,
				keymaps={
					init_selection="gnn",
					node_imcremental="grn",
					scope_incremental="grc",
					node_decremental="grm",
				},
			},



			-- Rainbow brackets
			-- from ts-Rainbow
			rainbow = {
				enable=true,
				disable={},
				extend_mode=true, -- for nonbracket ie html tags
				max_file_lines=null,
				colors = {"#ff1111","#55ff55","#3355ff","#ffff55","#55ffff","#ff00ff"},	-- rgb ycm
				-- colors = {"#ff1111","#ffff55","#55ff55","#55ffff","#3355ff","#ff00ff"}		-- red > magenta
				-- colors = {"#ff00ff","#3355ff","#55ffff","#55ff55","#ffff55","#ff1111"},	-- magenta > red
			},
		}
	end,
}

