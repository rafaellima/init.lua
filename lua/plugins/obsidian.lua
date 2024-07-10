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
        name = "garden",
        path = "~/personal/second-brain/The Garden",
      },
    },
  },

  notes_subdir = "0 - Inbox",
  new_notes_location = "notes_subdir",

  completion = {
    nvim_cmp = true,
    min_chars = 2,
  },
  templates = {
    folder = "5 - Templates",
    date_format = "%Y-%m-%d",
    time_format = "%H:%M",
    substitutions = {},
  },
  daily_notes = {
    folder = "Daily Notes",
    template = "Templates/Daily.md",
  },
}
