-- custom grep that allows for file extension filtering
-- it uses 2 spaces after the desired search string
-- e.g: foo  *.ex -- lists all foo entries in files with .ex extension
local finders = require("telescope.finders")
local make_entry = require("telescope.make_entry")
local pickers = require("telescope.pickers")

local flatten = vim.tbl_flatten

return function(opts)
  opts = opts or {}
  opts.cwd = opts.cwd and vim.fn.expand(opts.cwd) or vim.loop.cwd()
  opts.pattern = opts.pattern or "%s"

  local custom_grep = finders.new_async_job({
    command_generator = function(prompt)
      if not prompt or prompt == "" then
        return nil
      end

      local prompt_split = vim.split(prompt, "  ")

      local args = { "rg" }
      if prompt_split[1] then
        table.insert(args, "-e")
        table.insert(args, prompt_split[1])
      end

      if prompt_split[2] then
        table.insert(args, "-g")

        local pattern
        pattern = prompt_split[2]

        table.insert(args, string.format(opts.pattern, pattern))
      end

      return flatten({
        args,
        { "--color=never", "--no-heading", "--with-filename", "--line-number", "--column", "--smart-case" },
      })
    end,
    entry_maker = make_entry.gen_from_vimgrep(opts),
    cwd = opts.cwd,
  })

  pickers
      .new(opts, {
        debounce = 100,
        prompt_title = "Live Grep (with shortcuts)",
        finder = custom_grep,
        sorter = require("telescope.sorters").empty(),
      })
      :find()
end
