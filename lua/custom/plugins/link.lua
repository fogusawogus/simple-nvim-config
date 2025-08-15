return {
    -- somehow try to get this to work, this seems useful
  'harry-wilkos/link.nvim',
    enabled = false,
  dependencies = {
    'mason-org/mason.nvim',
    'mason-org/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'stevearc/conform.nvim',
    'zapling/mason-conform.nvim',
    'mfussenegger/nvim-lint',
    'rshkarin/mason-nvim-lint',
  },
  config = function()
    require('link').setup()
  end,
}
