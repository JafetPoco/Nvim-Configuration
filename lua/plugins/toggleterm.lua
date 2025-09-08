return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      -- Tamaño de la terminal
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<c-\>]], -- atajo global para abrir/cerrar
      hide_numbers = true, -- oculta número de línea en terminal
      shade_terminals = true, -- oscurece el fondo
      shading_factor = 2,
      start_in_insert = true, -- inicia en modo insert
      persist_size = true,
      direction = "float", -- "vertical" | "horizontal" | "tab" | "float"
      close_on_exit = true, -- cierra terminal cuando el proceso termina
      shell = vim.o.shell, -- usa la shell de tu sistema
      float_opts = {
        border = "curved",
        winblend = 3,
      },
    })

    -- Atajos adicionales
    local Terminal = require("toggleterm.terminal").Terminal

    -- Terminal flotante
    local float_term = Terminal:new({ direction = "float" })
    vim.keymap.set("n", "<leader>tf", function()
      float_term:toggle()
    end, { desc = "ToggleTerm flotante" })

    -- Terminal vertical
    local vert_term = Terminal:new({ direction = "vertical" })
    vim.keymap.set("n", "<leader>tv", function()
      vert_term:toggle()
    end, { desc = "ToggleTerm vertical" })

    -- Terminal horizontal
    local horiz_term = Terminal:new({ direction = "horizontal" })
    vim.keymap.set("n", "<leader>th", function()
      horiz_term:toggle()
    end, { desc = "ToggleTerm horizontal" })
  end,
}
