return {
  'catppuccin/nvim',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha', -- latte, frappe, macchiato, mocha
      custom_highlights = function(colors)
        -- Use 'colors' instead of 'palette' to access the theme's color palette
        return {
          Keyword = { style = { 'bold' } },
          Function = { style = { 'bold' } },
          Search = { fg = colors.crust, bg = colors.yellow },
          Visual = { bg = colors.surface1, style = { 'bold' } },
          CursorLine = { bg = colors.surface2 },
          -- Add debugger-related highlights
          DapBreakpoint = { fg = colors.red, style = { 'bold' } },
          DapBreakpointLine = { bg = colors.red, style = { 'bold' } },
          DapLogPoint = { fg = colors.yellow, style = { 'italic' } },
          DapStopped = { fg = colors.green, bg = colors.surface1 },
        }
      end,
      background = { -- :h background
        light = 'latte',
        dark = 'mocha',
      },
      transparent_background = true, -- disables setting the background color.
      show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
      term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = 'dark',
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { 'italic' }, -- Change the style of comments
        conditionals = { 'italic' },
        loops = {},
        functions = { 'italic' },
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      color_overrides = {},
      default_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        mini = {
          enabled = true,
          indentscope_color = '',
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    }

    -- setup must be called before loading
    vim.cmd.colorscheme 'catppuccin'
  end,
  opts = ...,
}
