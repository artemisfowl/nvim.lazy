return {
  "akinsho/toggleterm.nvim",
  version = "*",
  -- Lazy load the plugin until you press the shortcut
  keys = {
    { "<C-\\>", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal (Bottom)" },
  },
  opts = {
    size = 15,
    open_mapping = [[<C-\>]], -- Keeps internal state tracking in sync
    direction = "horizontal",
  },
  config = function(_, opts)
    require("toggleterm").setup(opts)

    -- Seamless window navigation and escape keys inside the terminal
    function _G.set_terminal_keymaps()
      local map_opts = { buffer = 0 }
      vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], map_opts)
      vim.keymap.set("t", "<C-\\>", "<cmd>ToggleTerm<cr>", map_opts) -- Close from terminal mode
      vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], map_opts)
      vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], map_opts)
      vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], map_opts)
      vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], map_opts)
    end

    vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
  end,
}
