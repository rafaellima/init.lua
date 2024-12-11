return {
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = {
						theme = "dropdown",
						previewer = false,
					},
					-- live_grep = {
					-- 	theme = "dropdown",
					-- },
				},
				extensions = { fzf = {} },
			})

			require("telescope").load_extension("fzf")

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			-- vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fg", require("plugins.custom.telescope.multigrep"))
		end,
	},
}
