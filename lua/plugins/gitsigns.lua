return {
  "lewis6991/gitsigns.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("gitsigns").setup({
      signs = {
        add          = { text = "│" },
        change       = { text = "│" },
        delete       = { text = "_" },
        topdelete    = { text = "‾" },
        changedelete = { text = "~" },
        untracked    = { text = "┆" },
      },
      numhl = true, -- Resalta los números de línea según los cambios
      linehl = false, -- Resaltar líneas completas
      signcolumn = true, -- Muestra los signos en el margen izquierdo
      watch_gitdir = { interval = 1000 }, -- Refrescar cambios cada segundo
      attach_to_untracked = true, -- No mostrar cambios en archivos no versionados
      current_line_blame = false, -- Muestra autor y commit en la linea
      -- current_line_blame_opts = {
      --   virt_text = true,
      --   virt_text_pos = "eol",
      --   delay = 500,
      --   ignore_whitespace = true,
      -- },
      -- current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",

      preview_config = { border = "rounded" }, -- Bordes redondeados en la vista previa

      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        map("n", "<leader>hp", gs.preview_hunk)
        map("n", "<leader>hd", gs.diffthis)

        map("n", "<leader>hS", gs.stage_buffer)
        map("n", "<leader>hu", gs.undo_stage_hunk)
      end,
    })
  end,
}
