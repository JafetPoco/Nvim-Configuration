return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  keys = {
    { "<leader>gv", "<cmd>DiffviewOpen<CR>", desc = "Abrir DiffView" },
    { "<leader>gh", "<cmd>DiffviewFileHistory<CR>", desc = "Historial de archivo" },
    { "<leader>gq", "<cmd>DiffviewClose<CR>", desc = "Cerrar DiffView" },
  },
  config = function()
    -- Configuración Diffview
    require("diffview").setup({
      enhanced_diff_hl = true, -- Mejor resaltado de diferencias
      use_icons = true,        -- Usa iconos si Neovim los soporta
      view = {
        default = {
          layout = "diff2_horizontal", -- Comparación en 2 paneles
        },
        merge_tool = {
          layout = "diff3_mixed",      -- Vista de 3 paneles para merges
          disable_diagnostics = true,  -- Evita distracciones con LSP
        },
      },
      file_panel = {
        listing_style = "tree", -- vista tipo árbol
        win_config = {
          position = "left",
          width = 35,
        },
      },
      keymaps = {
        view = {
          ["<Tab>"] = "<Cmd>DiffviewToggleFiles<CR>",
          ["gf"] = "<Cmd>DiffviewFocusFiles<CR>",
          ["q"] = "<Cmd>DiffviewClose<CR>",
          ["[x"] = "<Cmd>lua require('diffview.lib').go_to_prev_change()<CR>",
          ["]x"] = "<Cmd>lua require('diffview.lib').go_to_next_change()<CR>",
        },
        file_panel = {
          ["<Tab>"] = "<Cmd>DiffviewToggleFiles<CR>",
          ["q"] = "<Cmd>DiffviewClose<CR>",
          ["o"] = "<Cmd>DiffviewFocusFiles<CR>",
          ["j"] = "j",
          ["k"] = "k",
        },
      },
    })

  end,

}
