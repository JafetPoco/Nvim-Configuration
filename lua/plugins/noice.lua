return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",      -- requerido
    "rcarriga/nvim-notify",      -- para notificaciones bonitas
  },
  config = function()
    require("notify").setup({
      stages = "fade_in_slide_out", -- animaciones
      timeout = 3000,               -- duración del mensaje
      background_colour = "#000000", -- fondo transparente oscuro
    })

    require("noice").setup({
      cmdline = {
        enabled = true, -- reemplaza el cmdline (:)
        view = "cmdline_popup", -- estilo flotante
        format = {
          search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
          search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
          filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
        },
      },
      messages = {
        enabled = true, -- reemplaza los mensajes de Neovim
        view = "notify", -- usa nvim-notify
        view_error = "notify",
        view_warn = "notify",
        view_history = "messages",
        view_search = "virtualtext",
      },
      popupmenu = {
        enabled = true, -- reemplaza la ventana de autocompletado de comandos
        backend = "nui",
      },
      redirect = {
        view = "popup",
      },
      notify = {
        enabled = true,
        view = "notify",
      },
      lsp = {
        progress = { enabled = true },
        hover = { enabled = true },
        signature = { enabled = true },
        message = { enabled = true, view = "notify" },
        documentation = {
          view = "hover",
          opts = {
            border = { style = "rounded" },
          },
        },
      },
      presets = {
        bottom_search = true,     -- búsqueda en la parte inferior
        command_palette = true,   -- cmdline central estilo VSCode
        long_message_to_split = true,
        inc_rename = true,
        lsp_doc_border = true,    -- borde en ventanas de hover/signature
      },
      views = {
        cmdline_popup = {
          position = {
            row = "50%",
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
          filter_options = {},
          win_options = {
            winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
          },
        },
      },
    })
  end,
}
