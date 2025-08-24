return {
  "folke/todo-comments.nvim",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "]t", function() require("todo-comments").jump_next() end, desc = "Siguiente TODO" },
    { "[t", function() require("todo-comments").jump_prev() end, desc = "TODO anterior" },
    { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Buscar TODOs con Telescope" },
    { "<leader>sq", "<cmd>TodoQuickFix<cr>", desc = "TODOs en QuickFix" },
    { "<leader>xt", "<cmd>TodoTrouble<cr>",  desc = "TODOs en Trouble" },
  },
  opts = {
    signs = true,
    keywords = {
      FIX  = { icon = " ", color = "error", alt = { "FIXME", "BUG", "ISSUE" } },
      TODO = { icon = " ", color = "info" },
      HACK = { icon = " ", color = "warning" },
      WARN = { icon = " ", color = "warning", alt = { "WARNING" }},
      PERF = { icon = " ", color = "hint", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
      NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
    },
    gui_style = {
      fg = "NONE",
      bg = "BOLD",
    },
    merge_keywords = true,
    highlight = {
      multiline = true,
      multiline_pattern = "^.",
      multiline_context = 10,
      before = "",
      keyword = "wide",
      after = "fg",
    },
    colors = {
      error   = { "DiagnosticError", "ErrorMsg", "#DC2626" },
      warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
      info    = { "DiagnosticInfo", "#2563EB" },
      hint    = { "DiagnosticHint", "#10B981" },
      default = { "Identifier", "#7C3AED" },
    },
  },
}
