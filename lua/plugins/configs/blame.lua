return {
  {
    "FabijanZulj/blame.nvim",
    cmd = 'ToggleBlame',
    keys = {
      {'<leader>gB', '<cmd>BlameToggle window<CR>', desc = 'Git blame (window)'}
    },
    lazy = false,
    config = function()
      require('blame').setup {}
    end,
  },
}
