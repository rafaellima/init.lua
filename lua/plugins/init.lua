return {
  "nvim-lua/plenary.nvim", -- lua functions that many plugins use

  {
    'rose-pine/neovim',
    name = 'rose-pine'
  },

  "christoomey/vim-tmux-navigator", -- tmux & split window navigation
  "szw/vim-maximizer", -- maximizes and restores current window

  "tpope/vim-surround", -- add, delete, change surroundings (it's awesome)
  "inkarkat/vim-ReplaceWithRegister", -- replace with register contents using motion (gr + motion)

  "numToStr/Comment.nvim", -- commenting with gc

  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "nvim-lualine/lualine.nvim",

  -- autocompletion
  "hrsh7th/nvim-cmp", -- completion plugin
  "hrsh7th/cmp-buffer", -- source for text in buffer
  "hrsh7th/cmp-path", -- source for file system paths

  "ThePrimeagen/harpoon",

  "windwp/nvim-autopairs", -- autoclose parens, brackets, quotes, etc...

  -- git integration
  "lewis6991/gitsigns.nvim", -- show line modifications on left hand side

  "rust-lang/rust.vim",
  "fatih/vim-go",
  "hashivim/vim-terraform",

  "wakatime/vim-wakatime",

  { "echasnovski/mini.surround", branch = 'stable' },

  { 'rest-nvim/rest.nvim', dependencies = { "nvim-lua/plenary.nvim" } },

  "github/copilot.vim",

  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end
  },
}
