return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = {'DiffviewOpen', 'DiffviewFileHistory'},
  keys = {
    { '<leader>gv', '<cmd>DiffviewOpen<CR>', desc = 'Diff View'}
  },
  config = function()
    require("diffview").setup({
      enhanced_diff_hl = true, -- Mejor resaltado de diferencias
      use_icons = true, -- Usa iconos si Neovim los soporta
      view = {
        default = {
          layout = "diff2_horizontal", -- Muestra dos paneles de comparación
        },
      },
      keymaps = {
        view = {
          ["<Tab>"] = "<Cmd>DiffviewToggleFiles<CR>",
          ["gf"] = "<Cmd>DiffviewFocusFiles<CR>",
          ["[x"] = "<Cmd>lua require('diffview.lib').go_to_prev_change()<CR>",
          ["]x"] = "<Cmd>lua require('diffview.lib').go_to_next_change()<CR>",
          ["q"] = "<Cmd>DiffviewClose<CR>",
        },
        file_panel = {
          ["<Tab>"] = "<Cmd>DiffviewToggleFiles<CR>",
          ["q"] = "<Cmd>DiffviewClose<CR>",
          ["j"] = "j",
          ["k"] = "k",
          ["o"] = "<Cmd>DiffviewFocusFiles<CR>", -- Para cambiar a la vista de diffs
        },
      },
      -- keymaps = {
      --   disable_defaults = true, -- Usa los keymaps por defecto de Diffview
      -- },
    })
  end,
}

