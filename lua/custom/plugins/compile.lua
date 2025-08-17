-- return {
--   'pohlrabi404/compile.nvim',
--   -- This event makes sure the plugin loads lazily. You can
--   -- use any event you like, such as `ft` for file types or `autocmds`.
--   event = 'VeryLazy',
--   -- don't forget the options table!
--   opts = {
--     term_win_opts = {
--       height = 0.2,
--     },
--     cmds = {
--       default = './build.sh',
--     },
--     enter = true,
--   },
-- }
return {
  'ej-shafran/compile-mode.nvim',
  -- version = '^5.0.0',
  -- you can just use the latest version:
  branch = 'latest',
  -- or the most up-to-date updates:
  -- branch = "nightly",
  dependencies = {
    'nvim-lua/plenary.nvim',
    -- if you want to enable coloring of ANSI escape codes in
    -- compilation output, add:
    -- { "m00qek/baleia.nvim", tag = "v1.3.0" },
  },
  config = function()
    ---@type CompileModeOpts
    vim.g.compile_mode = {
      -- to add ANSI escape code support, add:
      -- baleia_setup = true,

      -- to make `:Compile` replace special characters (e.g. `%`) in
      -- the command (and behave more like `:!`), add:
      bang_expansion = true,
    }
  end,
}
