

-- vim.keymap.set("n", "gn", vim.cmd.ObsidianFollowLink)
vim.keymap.set("n", "gd", vim.cmd.ObsidianFollowLink)
vim.keymap.set("n", "<leader>dn", vim.cmd.ObsidianBacklinks)
-- note gn takes a long time to run; probably waiting for a longer key chord

-- vim.keymap.set("n", "gn", ":ObsidianFollowLink<CR>")



-- hide syntax
vim.opt.conceallevel = 0 -- was 1

-- vim-markdown
vim.cmd([[ let g:vim_markdown_folding_disabled = 1]])
vim.cmd([[ let g:vim_markdown_follow_anchor = 1]])
vim.cmd([[ let g:vim_markdown_math = 1]])
vim.cmd([[ let g:vim_markdown_frontmatter = 1]])



