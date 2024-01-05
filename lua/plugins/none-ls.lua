return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.rubocop.with({
          command = "bundle",
          args = vim.list_extend(
            { "exec", "rubocop" },
            null_ls.builtins.diagnostics.rubocop._opts.args
          )
        }),
        null_ls.builtins.formatting.rubocop.with({
          command = "bundle",
          args = vim.list_extend(
            { "exec", "rubocop" },
            null_ls.builtins.formatting.rubocop._opts.args
          )
        }),
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
