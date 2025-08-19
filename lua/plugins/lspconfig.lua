return {
  "neovim/nvim-lspconfig", -- Plugin principal para configurar LSP
  dependencies = { "williamboman/mason-lspconfig.nvim" },
  config = function()
    local lspconfig = require("lspconfig")

    -- Configuración de servidores instalados con Mason
    require("mason-lspconfig").setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = require("cmp_nvim_lsp").default_capabilities(), -- Habilita autocompletado con nvim-cmp
        })
      end,
    })

    -- Configuración específica para Lua (necesaria para Neovim)
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } }, -- Evita advertencias en la configuración de Neovim
        },
      },
    })
  end,
}
