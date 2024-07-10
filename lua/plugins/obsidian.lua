return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "TheGarden",
        path = "/Users/rafael/Library/Mobile Documents/iCloud~md~obsidian/Documents/TheGarden",
      },
    },
  },

  completion = {
    nvim_cmp = true,
    min_chars = 2,
  },
}
