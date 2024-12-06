return {
  {
    "ray-x/navigator.lua",
    dependencies = {
      { "ray-x/guihua.lua", build = "cd lua/fzy && make" }, -- Required dependency
      { "neovim/nvim-lspconfig" }, -- LSP configuration plugin
    },
    config = function()
      require('navigator').setup({
        debug = false, -- Turn on for troubleshooting
        width = 0.75, -- Width of floating windows as a percentage of the screen
        height = 0.3, -- Height of floating windows
        border = "rounded", -- Style of floating window borders
        transparency = 50, -- Transparency of floating windows (0-100)
        lsp = {
          format_on_save = false, -- Disable format on save (can be set to true if desired)
          disable_format_cap = {}, -- Disable formatting for specific LSPs
          diagnostic = {
            underline = true,
            virtual_text = { spacing = 4, prefix = "●" },
            update_in_insert = false, -- Do not update diagnostics during insert mode
          },
        },
      })
    end,
  }
}
