return {
  'sj2tpgk/nvim-eldoc',
  config = function()
    require('nvim-eldoc').setup()
    vim.cmd 'hi link Eldoc Normal'
    vim.cmd 'hi link EldocCur Identifier'
  end,
}
