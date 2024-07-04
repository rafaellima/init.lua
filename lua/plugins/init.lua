return {
  "nvim-lua/plenary.nvim", -- lua functions that many plugins use

  "christoomey/vim-tmux-navigator", -- tmux & split window navigation
  "szw/vim-maximizer", -- maximizes and restores current window

  "tpope/vim-surround", -- add, delete, change surroundings (it's awesome)
  "inkarkat/vim-ReplaceWithRegister", -- replace with register contents using motion (gr + motion)

  "numToStr/Comment.nvim", -- commenting with gc

  "nvim-lualine/lualine.nvim",

  "windwp/nvim-autopairs", -- autoclose parens, brackets, quotes, etc...

  -- git integration
  "lewis6991/gitsigns.nvim", -- show line modifications on left hand side

  "rust-lang/rust.vim",
  "fatih/vim-go",
  "hashivim/vim-terraform",

  "wakatime/vim-wakatime",

  { "echasnovski/mini.surround", branch = 'stable' },

  -- "github/copilot.vim",
  "supermaven-inc/supermaven-nvim",

  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end
  },
}
