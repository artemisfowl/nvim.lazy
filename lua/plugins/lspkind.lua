-- symbols for auto-completion
return {
  'onsails/lspkind.nvim',
  config = function()
    require('lspkind').init {
      mode = 'symbol_text',
      preset = 'default',
      --override preset symbols
      symbol_map = {
        Text = ' 󰉿 ',
        Method = ' 󰆧 ',
        Function = ' 󰊕 ',
        Field = ' 󰜢 ',
        Variable = ' 󰀫 ',
        Interface = '  ',
        Module = '  ',
        Property = ' 󰜢 ',
        Value = ' 󰎠 ',
        Enum = '  ',
        Keyword = ' 󰌋 ',
        File = ' 󰈙 ',
        EnumMember = '  ',
        Constant = ' 󰏿 ',
        Event = '  ',
        Operator = ' 󰆕 ',
        TypeParameter = '  ',
        Class = '  ',
        Struct = '  ',
        Reference = '  ',
        Folder = '  ',
        Color = '  ',
        Unit = ' 󱅸 ',
        Snippet = '  ',
        Constructor = '  ',
        Default = '  ',
      },
    }
  end,
}
