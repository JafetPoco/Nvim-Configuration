return {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer",    -- Sugerencias de buffer actual
      "hrsh7th/cmp-path",      -- Sugerencias de rutas
      "hrsh7th/cmp-cmdline",   -- Autocompletado en línea de comandos
    --  "hrsh7th/cmp-nvim-lsp",  -- Integración con LSP
      "hrsh7th/cmp-nvim-lua",  -- Autocompletado para Lua en Neovim
    --  "L3MON4D3/LuaSnip",      -- Soporte para snippets
    --  "saadparwaiz1/cmp_luasnip", -- Integración de snippets con cmp
    --},
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body) -- Usa LuaSnip para expandir snippets
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item(), -- Seleccionar siguiente sugerencia
          ["<S-Tab>"] = cmp.mapping.select_prev_item(), -- Seleccionar anterior
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirmar con Enter
          ["<C-Space>"] = cmp.mapping.complete(), -- Mostrar sugerencias manualmente
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" }, -- Soporte para LSP
          { name = "buffer" },   -- Palabras en el buffer
          { name = "path" },     -- Rutas de archivos
          { name = "luasnip" },  -- Snippets
        }),
      })
    end,
  },
}
