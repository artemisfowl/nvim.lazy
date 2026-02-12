-- breadcrumbs
return {
  'nvimdev/lspsaga.nvim',
  config = function()
    require('lspsaga').setup {
      outline = {
        win_position = 'right',
        win_height = 15,
        win_width = 60,
        auto_enter = true,
        auto_preview = true,
        close_after_jump = true,
      },
      show_outline = {
        layout = 'float',
        auto_refresh = true,
        jump_key = '<enter>',
      },
      hover = {
        max_width = 0.8,
        max_height = 0.8,
        border = 'rounded',
        auto_preview = true,
      },
    }
  end,
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
}
