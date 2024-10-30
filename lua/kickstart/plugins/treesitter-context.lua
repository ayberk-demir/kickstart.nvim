return  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter" },
    config = function()
  require('treesitter-context').setup {
    enable = true, -- Enable this plugin
    max_lines = 5, -- Max lines shown at the top
    trim_scope = 'outer', -- Choose which lines to trim if max_lines is exceeded
    min_window_height = 0, -- Min window height for context to appear
    line_numbers = true, -- Show line numbers in context
    multiline_threshold = 9999, -- Max lines for single context
    mode = 'cursor', -- Update context based on cursor position
  }
    end
  }
