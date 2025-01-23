return {

  { -- Linting
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lint = require 'lint'
      lint.linters_by_ft = {
        markdown = { 'markdownlint' },
        python = {'pylint'}
      }

      local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      })
      if lint.linters.pylint.args then
        table.insert(lint.linters.pylint.args, '--rcfile=' .. vim.fn.stdpath('config') .. '/pylint/pylintrc')
      else
        lint.linters.pylint.args = {
          '--rcfile=' .. vim.fn.stdpath('config') .. '/pylint/pylintrc',
        }
      end

    end,
  },
}
