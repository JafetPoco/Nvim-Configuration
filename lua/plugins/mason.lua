return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- Actualiza automáticamente al instalar
    config = function()
      -- Configuración de mason.nvim
      require("mason").setup({
        ui = {
          border = "rounded",
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim", -- Puente entre mason.nvim y nvim-lspconfig
    dependencies = { "williamboman/mason.nvim" }, -- Se asegura de que Mason se cargue primero
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd" }, -- Agrega los servidores LSP que necesites

        -- LISTA DE SERVIDORES:
        -- C, C++                 clangd
        -- Python       	        pyright
        -- Lua                    lua_ls
        -- Bash         	        bashls
        -- JavaScript/TypeScript	tsserver
        -- HTML, CSS	            html, cssls
        -- Rust	                  rust_analyzer

        automatic_installation = true,
      })
    end
  }
}


