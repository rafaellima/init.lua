return {
  {
    "vim-test/vim-test",
    dependencies = { "preservim/vimux" },
    vim.keymap.set("n", "<leader>,t", ":TestNearest<CR>"),
    vim.keymap.set("n", "<leader>,a", ":TestSuite<CR>"),

    vim.cmd("let test#strategy = 'vimux'")
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "olimorris/neotest-rspec",
      "nvim-neotest/neotest-go",
      "jfpedroza/neotest-elixir",
    },
    vim.keymap.set("n", "<leader>,s", ":lua require('neotest').run.run()<CR>"),
    vim.keymap.set("n", "<leader>,f", ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>"),
    vim.keymap.set("n", "<leader>,o", ":lua require('neotest').output.open()<CR>"),

    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-rspec"),
          require("neotest-elixir"),
          require("neotest-go"),
        },
      })
    end
  }
}
