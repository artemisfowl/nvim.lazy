return {
  'f-person/git-blame.nvim',
  event = 'VeryLazy',
  config = function()
    local opts = { enabled = true }
    require('gitblame').setup(opts)
  end,
}
