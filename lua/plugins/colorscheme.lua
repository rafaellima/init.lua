return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = false,
        integrations = {
          harpoon = true,
          neotree = true,
          telescope = {
            enabled = true,
            style = "nvchad",
          },
        },
      })

      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
}
