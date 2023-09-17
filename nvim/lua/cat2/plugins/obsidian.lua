-- https://github.com/epwalsh/obsidian.nvim
return {
	"epwalsh/obsidian.nvim",
	lazy = true,
	event = {
		"BufReadPre /home/cathal/notes/**.md",
		"BufNewFile /home/cathal/notes/**.md",
		-- "BufEnter /home/*/notes/**.md",
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
		"nvim-telescope/telescope.nvim",
		"preservim/vim-markdown" --used for syntax highlight
	},
	opts = {
		dir = "~/notes",
		-- notes_subdir = "notes",
		disable_frontmatter = true, -- can be customized
		open_notes_in = "hsplit", -- current hsplit vsplit

		completion = {
			nvim_cmp = true,
			min_chars = 1,
			prepend_note_id = false,
			-- Where to put new notes created from completion. Valid options are
			--  * "current_dir" - put new notes in same directory as the current buffer.
			--  * "notes_subdir" - put new notes in the default notes subdirectory.
			new_notes_location = "current_dir",
		},

		templates = {
			subdir = "TEMPLATES",
			date_format = "%Y-%m-%d-%a",
			time_format = "%H:%M",
		}
	},

}
-- note config = function()
-- breaks it for some reason

-- ObsidianQuickSwitch
-- ObsidianFollowLink
-- ObsidianBacklinks
-- ObsidianToday
-- ObsidianTemplate

