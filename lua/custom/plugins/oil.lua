return {
  'stevearc/oil.nvim',
  enabled = true,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {},
  config = function()
    function _G.get_oil_winbar()
      local bufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)
      local dir = require('oil').get_current_dir(bufnr)
      if dir then
        return vim.fn.fnamemodify(dir, ':~')
      else
        -- If there is no current directory (e.g. over ssh), just show the buffer name
        return vim.api.nvim_buf_get_name(0)
      end
    end
    require('oil').setup {
      columns = {
        'icon',
        'permissions',
        'size',
        -- 'mtime',
      },
      view_options = {
        show_hidden = true,
      },
      skip_confirm_for_simple_edits = true,
      watch_for_changes = true,
      win_options = {
        winbar = '%!v:lua.get_oil_winbar()',
      },
    }
    vim.keymap.set('n', '<leader>e', function()
      vim.cmd 'Oil'
    end, { desc = 'Open file explorer' })
  end,
}
