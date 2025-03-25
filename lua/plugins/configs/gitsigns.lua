return {
  "lewis6991/gitsigns.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("gitsigns").setup({
      signs = {
        add          = { text = "│" },
        change       = { text = "│" },
        delete       = { text = "_" },
        topdelete    = { text = "‾" },
        changedelete = { text = "~" },
      },
      numhl = true, -- Resalta los números de línea según los cambios
      linehl = false, -- No resaltar líneas completas
      signcolumn = true, -- Muestra los signos en el margen izquierdo
      watch_gitdir = { interval = 1000 }, -- Refrescar cambios cada segundo
      attach_to_untracked = false, -- No mostrar cambios en archivos no versionados
      current_line_blame = false, -- No mostrar blame en línea por defecto
      preview_config = { border = "rounded" }, -- Bordes redondeados en la vista previa
    })
  end,
}
