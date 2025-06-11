return {
  'folke/snacks.nvim',
  opts = {
    lazygit = {},
    scratch = {},
  },
  keys = {
    {
      '<leader>bs',
      function()
        Snacks.scratch()
      end,
      desc = 'Toggle Scratch Buffer',
    },
    {
      '<leader>bS',
      function()
        Snacks.scratch.select()
      end,
      desc = 'Select Scratch Buffer',
    },
    {
      '<leader>gg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Open lazygit',
    },
  },
}
