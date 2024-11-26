M ={}

M.get_plugins = function(opts)
    plugins=require("plugins.ui")
    return plugins
end

M.setup = function(opts) 
    -- require("plugins.keymaps_and_options")
    opts = opts or {}
    print("plugins_test.lua!!!!")
    print(vim.inspect(opts))
    table.insert(M, 	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({
				live_filter = {
					prefix = "[FILTER]: ",
					always_show_folders = false, -- Turn into false from true by default
				}
			})

			-- Key mapping for opening and closing file tree
			vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")
			vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>", { desc = "[T]oggle Nvim [T]ree" })
		end,
	})
    return require("plugins.ui")
end

return M
