return {
  'rose-pine/neovim',
  name = 'rose-pine',
  config = function()
    require("rose-pine").setup({
      variant = 'auto', -- @usage 'auto'|'main'|'moon'|'dawn'
      dark_variant = 'main', -- @usage 'main'|'moon'|'dawn'
      disable_background = true
    })
  end 
}
