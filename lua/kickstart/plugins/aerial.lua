return {
  'stevearc/aerial.nvim',
  config = function()
    require('aerial').setup {
      -- optionally use on_attach to set keymaps when aerial has attached to a buffer
      manage_folds = false,
      link_tree_to_folds = false,
      layout = {
        max_width = 0.6,
        min_width = 0.25,
      },
      filter_kind = {
        "Class",
        "Constructor",
        "Enum",
        "Function",
        "Interface",
        "Module",
        "Method",
        "Struct",
        -- "Variable",
        -- "Variables"
      },
      on_attach = function(bufnr)
        -- Jump forwards/backwards with '{' and '}'
        vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', { buffer = bufnr })
        vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', { buffer = bufnr })
      end,
    }
  end,
}
