return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {"c", "lua", "vim", "query"}, -- No instala ningún parser automáticamente
      
      auto_install = false, -- Si está en True, se instala el lenguage que detecte autoamticamente

      highlight = { 
        enable = true, -- Activa el resaltado de sintaxis
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<CR>", --Iniciar selección en el nodo actual
          node_incremental = "<CR>", --Expandir selección al siguiente nodo padre
          node_decremental = "<BS>", --Reducir selección al nodo anterio
          scope_incremental = "<TAB>", --Expandir selección al siguiente scope
        },
      },
      -- enable = false
    })
  end
}

-- Para ver q lenguajes estan instalados y cuales puedo instalar
-- ejecutar :TSInstallInfo

