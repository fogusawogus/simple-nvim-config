return {
  'stevearc/oil.nvim',
  enabled = true,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {},
  config = function()
    require('oil').setup {
      columns = {
        'icon',
        -- 'permissions',
        -- 'size',
        -- "mtime",
      },
      view_options = {
        show_hidden = true,
      },
      skip_confirm_for_simple_edits = true,
    }
    vim.keymap.set('n', '<leader>e', function()
      vim.cmd 'Oil --float'
    end, { desc = 'Open file explorer' })
  end,
}
