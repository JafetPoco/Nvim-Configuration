return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
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
        disable_defaults = false, -- Usa los keymaps por defecto de Diffview
      },
    })
  end,
}

