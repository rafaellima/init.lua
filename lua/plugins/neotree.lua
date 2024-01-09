return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			local neotree = require("neotree")
			neotree.setup({
				follow_current_file = {
					enabled = true,
					leave_dirs_open = false,
				},
			})

			vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {})
		end,
	},
}
