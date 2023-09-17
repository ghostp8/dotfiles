
--vim.api.nvim_set_hl(1, "GitSignsAdd", { guifg = "#00ff00" })
--vim.api.nvim_set_hl(1, "GitSignsChange", { guifg = "#ffaa00" })
--vim.api.nvim_set_hl(1, "GitSignsDelete", { guifg = "#ff0000" })

vim.cmd([[ highlight GitSignsAdd guifg= #00ff00]])
vim.cmd([[ highlight GitSignsChange guifg= #ffaa00]])
vim.cmd([[ highlight GitSignsDelete guifg= #ff0000]])


