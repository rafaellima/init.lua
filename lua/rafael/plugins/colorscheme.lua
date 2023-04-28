local setup, rose_pine = pcall(require, "rose-pine")
if not setup then
  return
end

rose_pine.setup({
  --- @usage 'auto'|'main'|'moon'|'dawn'
  variant = 'auto',
  --- @usage 'main'|'moon'|'dawn'
	dark_variant = 'main',

  disable_background = true
})

vim.cmd('colorscheme rose-pine')
