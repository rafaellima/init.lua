return {
  {
    "vim-test/vim-test",
    dependencies = { "preservim/vimux" },
    vim.keymap.set("n", "<leader>,t", ":TestNearest<CR>"),

    vim.cmd("let test#strategy = 'vimux'")
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "olimorris/neotest-rspec",
      "nvim-neotest/neotest-go",
    },
    vim.keymap.set("n", "<leader>,s", ":lua require('neotest').run.run()<CR>"),
    vim.keymap.set("n", "<leader>,f", ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>"),

    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-rspec")
        },
      })
    end
  }
}
