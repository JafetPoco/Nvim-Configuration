return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {"c", "lua"}, -- No instala ningún parser automáticamente
      highlight = { enable = true }, -- Activa el resaltado de sintaxis
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn", --Iniciar selección en el nodo actual
          node_incremental = "grn", --Expandir selección al siguiente nodo padre
          node_decremental = "grm", --Reducir selección al nodo anterior
          scope_incremental = "grc", --Expandir selección al siguiente scope
        },
      }
    })
  end
}

-- Para ver q lenguajes estan instalados y cuales puedo instalar
-- ejecutar :TSInstallInfo

