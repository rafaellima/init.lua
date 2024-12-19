return {
  {
    "voldikss/vim-floaterm",
    config = function()
      vim.keymap.set("n", "<leader>tt", ":FloatermToggle<CR>")
      vim.keymap.set("t", "<leader>tt", ":FloatermToggle<CR>")
    end,
  },
  {
    "vim-test/vim-test",
    vim.keymap.set("n", "<leader>,s", ":TestNearest<CR>"),
    vim.keymap.set("n", "<leader>,f", ":TestFile<CR>"),
    vim.keymap.set("n", "<leader>,a", ":TestSuite<CR>"),

    vim.cmd("let test#strategy = 'floaterm'"),
  },
}
