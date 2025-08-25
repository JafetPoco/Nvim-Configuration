return {
  "s1n7ax/nvim-window-picker",
  name = "window-picker",
  event = "VeryLazy",
  opts = {
    hint = "floating-big-letter", -- estilos: "statusline-winbar", "floating-big-letter"
    filter_rules = {
      bo = {
        filetype = { "NvimTree", "neo-tree", "notify", "Trouble", "qf" },
        buftype = { "terminal", "quickfix" },
      },
    },
    fg_color = "#ffffff",
    current_win_hl_color = "#4C566A",
    other_win_hl_color = "#2E3440",
  },

  config = function(_, opts)
    local picker = require("window-picker")
    picker.setup(opts)

    -- 🔹 Keymap global: elegir ventana y saltar
    vim.keymap.set("n", "<leader>ww", function()
      local win = picker.pick_window()
      if win then
        vim.api.nvim_set_current_win(win)
      end
    end, { desc = "Elegir ventana" })
  end,
}
