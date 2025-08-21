return {
  "SmiteshP/nvim-navic",
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    local navic = require("nvim-navic")

    navic.setup({
      highlight = true,
      separator = " > ",
      depth_limit = 0,      -- 0 = sin límite de profundidad
      depth_limit_indicator = "..",
      safe_output = true,   -- evita errores si no hay contexto
    })

    -- 🔹 Opción: mostrar Navic en la winbar
    vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"

    -- Guarda un on_attach global en vim para usarlo en mason-lspconfig
    function _G.attach_navic(client, bufnr)
      if client.server_capabilities.documentSymbolProvider then
        navic.attach(client, bufnr)
      end
    end
  end,
}

