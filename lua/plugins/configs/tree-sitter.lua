return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
  local configs = require("nvim-treesitter.configs")

  configs.setup({
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "cpp", "heex", "javascript", "html" },
    sync_install = false,
    highlight = { 
      enable = true,  -- Activa el resaltado de sintaxis del Tree-Sitter
    },
    indent = {
      enable = true -- Habilita identación basada en Tree-Sitter!!!!!
      --OJO: Ya no hace caso a la identación q le di en el archivo configuración de la carpeta core
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",  -- Iniciar selección en el nodo actual
        node_incremental = "grn", -- Expandir selección al siguiente nodo padre
        node_decremental = "grm", -- Reducir selección al nodo anterior
        scope_incremental = "grc", -- Expandir selección al siguiente scope
      },
    }
  })
  end
}

-- Para ver q lenguajes estan intalados y cuales puedo intalar
-- ejecutar  :TSInstallInfo
