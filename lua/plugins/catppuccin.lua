-- Colorscheme
-- return {
--   'catppuccin/nvim',
--   name = 'catppuccin',
--   priority = 1000,
--   init = function()
--     -- setting up the configuration for catppuccin
--     -- require('catppuccin').setup {
--     --   flavour = 'frappe',
--     --   transparent_background = true,
--     --   term_colors = true,
--     --   no_italic = false,
--     --   no_bold = false,
--     --   no_underline = false,
--     --   styles = {
--     --     comments = {},
--     --     conditionals = {},
--     --     loops = {},
--     --     functions = {},
--     --     keywords = {},
--     --     strings = {},
--     --     variables = {},
--     --     numbers = {},
--     --     booleans = {},
--     --     properties = {},
--     --     types = {},
--     --     operators = {},
--     --     miscs = {},
--     --   },
--     -- }
--     -- -- Load the colorscheme here.
--     -- -- Like many other themes, this one has different styles, and you could load
--     -- -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
--     -- vim.cmd.colorscheme 'catppuccin-frappe'
--     require('catppuccin').setup {
--       flavour = 'auto', -- latte, frappe, macchiato, mocha
--       background = { -- :h background
--         light = 'latte',
--         dark = 'mocha',
--       },
--       transparent_background = true, -- disables setting the background color.
--       float = {
--         transparent = true, -- enable transparent floating windows
--         solid = false, -- use solid styling for floating windows, see |winborder|
--       },
--       show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--       term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
--       dim_inactive = {
--         enabled = false, -- dims the background color of inactive window
--         shade = 'dark',
--         percentage = 0.15, -- percentage of the shade to apply to the inactive window
--       },
--       no_italic = false, -- Force no italic
--       no_bold = false, -- Force no bold
--       no_underline = false, -- Force no underline
--       styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--         comments = { 'italic' }, -- Change the style of comments
--         conditionals = { 'italic' },
--         loops = {},
--         functions = {},
--         keywords = {},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--         -- miscs = {}, -- Uncomment to turn off hard-coded styles
--       },
--       color_overrides = {},
--       custom_highlights = {},
--       default_integrations = true,
--       auto_integrations = true,
--       integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         treesitter = true,
--         telescope = true,
--         notify = false,
--         mini = {
--           enabled = true,
--           indentscope_color = '',
--         },
--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--       },
--     }
--
--     -- setup must be called before loading
--     vim.cmd.colorscheme 'catppuccin'
--
--     -- You can configure highlights by doing something like:
--     -- vim.cmd.hi 'Comment gui=none'
--   end,
-- }

return {
  "catppuccin/nvim",
  lazy = true,
  name = "catppuccin",
  opts = {
    transparent_background = true,
    lsp_styles = {
      underlines = {
        errors = { "undercurl" },
        hints = { "undercurl" },
        warnings = { "undercurl" },
        information = { "undercurl" },
      },
    },
    integrations = {
      aerial = true,
      alpha = true,
      cmp = true,
      dashboard = true,
      flash = true,
      gitsigns = true,
      headlines = true,
      illuminate = true,
      indent_blankline = { enabled = true },
      leap = true,
      lsp_trouble = true,
      mason = true,
      markdown = true,
      mini = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      navic = { enabled = true, custom_bg = "lualine" },
      neotest = true,
      neotree = true,
      noice = true,
      semantic_tokens = true,
      telescope = true,
      treesitter = true,
      treesitter_context = true,
      which_key = true,
    },
  },
  specs = {
    {
      "akinsho/bufferline.nvim",
      optional = true,
      opts = function(_, opts)
        if (vim.g.colors_name or ""):find("catppuccin") then
          opts.highlights = require("catppuccin.special.bufferline").get_theme()
        end
      end,
    },
  },
}
