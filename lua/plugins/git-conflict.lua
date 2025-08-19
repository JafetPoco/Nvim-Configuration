return {
  "akinsho/git-conflict.nvim",
  version = "*",
  config = function()
    require("git-conflict").setup({
      default_mappings = true, -- Usa los mapeos por defecto
      disable_diagnostics = false, -- No desactiva los diagnósticos durante un conflicto
      highlights = { -- Personaliza los colores de las secciones en conflicto
        incoming = "DiffAdd",
        current = "DiffText",
      },
      -- Opcional: descomenta para abrir Diffview automáticamente en conflictos
      hooks = {
        diff_opened = function()
          vim.cmd("DiffviewOpen")
        end,
      },
    })
  end,
}

