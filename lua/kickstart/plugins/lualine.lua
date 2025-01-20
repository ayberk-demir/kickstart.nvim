return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'kyazdani42/nvim-web-devicons', opt = true },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'catppuccin', -- Use a theme you like
        icons_enabled = true,
        section_separators = { left = '', right = '' }, -- Fancy separators
        component_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff' },
        lualine_c = {}, -- Show full path
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {}, -- Remove inactive sections for clarity
      winbar = {
        lualine_a = { { 'filename', path = 1 } }, -- Show file path in the winbar
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      inactive_winbar = {
        lualine_a = { { 'filename', path = 1 } }, -- Show file path in inactive windows too
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
    }
    require('dashboard').setup {}
  end,
}
