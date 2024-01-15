return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  config = function()
    require("catppuccin").setup({
      colorscheme = "frappe",
      transparency = true,
      integrations = {
        harpoon = true,
        neotree = true,
      },
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
