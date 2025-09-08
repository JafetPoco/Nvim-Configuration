return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "onsails/lspkind.nvim",
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    local lspkind = require("lspkind")

    cmp.setup({
      snippet = {
        expand = function(args) luasnip.lsp_expand(args.body) end,
      },

      window = {
        completion = cmp.config.window.bordered(),
        documentacion = cmp.config.window.bordered(),
      },

      formatting = {
        format = lspkind.cmp_format({
          mode = "symbol_text",
          maxwidth = 50,
          ellipsis_char = "...",
        }),
      },

      mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4), -- Scroll en la documentacion
        ["<C-f>"] = cmp.mapping.scroll_docs(4), -- Scroll en la documentacion
        ["<C-Space>"] = cmp.mapping.complete(), -- Abre la ventana de autocompletado
        ["<C-e>"] = cmp.mapping.abort(), -- Cierra ventana de autocompletado
        ["<C-y>"] = cmp.mapping.confirm({ select = true }), -- Acepta la sugerencia
        ["<Tab>"] = cmp.mapping.select_next_item(),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
      }, {
        { name = "buffer" },
        { name = "path" },
      }),
    })

    --local lspconfig = require("lspconfig")

    --lspconfig.clangd.setup({ capabilities = capabilities })
    --lspconfig.pyright.setup({ capabilities = capabilities })
  end,
}

