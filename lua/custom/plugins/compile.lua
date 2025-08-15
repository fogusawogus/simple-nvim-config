return {
  'pohlrabi404/compile.nvim',
  -- This event makes sure the plugin loads lazily. You can
  -- use any event you like, such as `ft` for file types or `autocmds`.
  event = 'VeryLazy',
  -- don't forget the options table!
  opts = {
    cmds = {
      default = './build.sh',
    },
  },
}
