return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- para íconos bonitos
  cmd = { "Trouble", "TroubleToggle" },
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
    { "<leader>xw", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)" },
    { "<leader>xl", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
    { "<leader>xq", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
    -- Integración con todo-comments
    { "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "TODOs (Trouble)" },
  },
  opts = {
    position = "bottom", -- bottom | top | left | right
    height = 10, -- altura si está en bottom/top
    width = 50, -- ancho si está en left/right
    icons = {
      error = "",
      warning = "",
      hint = "",
      information = "",
    },
    fold_open = "",
    fold_closed = "",
    group = true, -- agrupa resultados
    padding = true,
    action_keys = { -- teclas dentro de Trouble
      close = "q",
      refresh = "r",
      jump = { "<cr>", "<tab>" },
      open_split = { "<c-x>" },
      open_vsplit = { "<c-v>" },
      open_tab = { "<c-t>" },
      toggle_mode = "m",
      toggle_preview = "P",
      preview = "p",
      close_folds = { "zM", "zm" },
      open_folds = { "zR", "zr" },
      toggle_fold = { "zA", "za" },
      previous = "k",
      next = "j",
    },
    indent_lines = true,
    auto_open = false,
    auto_close = false,
    auto_preview = true, -- vista previa de diagnósticos
    auto_fold = false,
    use_diagnostic_signs = true,
  },
}
