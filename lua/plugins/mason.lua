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
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
    }, -- Se asegura de que Mason se cargue primero

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

      -- Integración con nvim-cmp (autocompletado)
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      -- Detecta todos los servidores instalados en Mason
      for _, server in ipairs(require("mason-lspconfig").get_installed_servers()) do
        vim.lsp.config(server, {
          capabilities = capabilities,
          on_attach = attach_navic,
        })
      end

      -- Si algún server necesita config especial, lo sobreescribes
      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
        on_attach = attach_navic,
        settings = {
          Lua = { diagnostics = { globals = { "vim" } } },
        },
      })
    end
  }
}


