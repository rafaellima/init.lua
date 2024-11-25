return {
  {
    "vim-test/vim-test",
    dependencies = { "preservim/vimux" },
    vim.keymap.set("n", "<leader>,s", ":TestNearest<CR>"),
    vim.keymap.set("n", "<leader>,f", ":TestFile<CR>"),
    vim.keymap.set("n", "<leader>,a", ":TestSuite<CR>"),

    vim.cmd("let test#strategy = 'vimux'")
  },
}
