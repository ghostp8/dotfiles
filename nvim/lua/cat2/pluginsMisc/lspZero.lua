--- lua-language-server; pyright; bash-language-server; csharp-language-server
-- vim-language-server
-- https://github.com/VonHeikemen/lsp-zero.nvim
-- https://www.youtube.com/watch?v=w7i4amO_zaE&list=TLPQMDUwOTIwMjMvbFR1CaUIcQ&index=10


local lsp = require('lsp-zero')

lsp.preset("recommended")
lsp.ensure_installed({
	"lua_ls",
	"bashls",
	-- "csharp_ls",
	"pyright",
})

local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<C-k>"] = cmp.mapping.select_prev_item(cmp_select),
	["<C-j>"] = cmp.mapping.select_next_item(cmp_select),
	["<C-l>"] = cmp.mapping.confirm({ select = true }),
})

-- lsp.set_preferences({
-- 	sign_icons = { }
-- })

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})



lsp.on_attach(function(client, bufnr)
		print("help")
	local opts = {buffer = bufnr, remap = false}

	--- BASE
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "<S-k>", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>da", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>dn", function() vim.lsp.buf.rename() end, opts) --not implemented in my LSPs
	vim.keymap.set("n", "<leader>dh", function() vim.lsp.buf.signature_help() end, opts) --not implemented

	--- Telescope
	-- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>ds", "<CMD>Telescope lsp_workspace_symbols<CR>")
	-- vim.keymap.set("n", "<leader>vre", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>d<S-s>", "<CMD>Telescope lsp_references<CR>")

	--- DIAGNOSTIC
	vim.keymap.set("n", "<leader>dd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)

end)

lsp.setup()
