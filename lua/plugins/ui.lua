return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {
		-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
		-- animation = true,
		-- insert_at_start = true,
		-- …etc.
	},
	version = "^1.0.0", -- optional: only update when a new 1.x version is released

	config = function()
		require('barbar').setup()
		-- Keymappings for bar bar to switch and close buffers
		vim.keymap.set("n", "<leader>j", "<cmd>BufferPrevious<CR>")
		vim.keymap.set("n", "<leader>k", "<cmd>BufferNext<CR>")
		vim.keymap.set("n", "<leader>x", "<cmd>BufferClose<CR>")
		vim.keymap.set("n", "<leader>X", "<cmd>BufferClose!<CR>")
	end,
}
