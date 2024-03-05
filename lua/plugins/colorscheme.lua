return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        -- color_overrides = {
        --   mocha = {
        --     base = "#000000",
        --     mantle = "#000000",
        --     crust = "#000000",
        --   },
        -- },
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
