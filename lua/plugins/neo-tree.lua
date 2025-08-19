return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- iconos
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- Keymaps globales
    vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle Neo-Tree" })
    vim.keymap.set("n", "<leader>o", ":Neotree focus<CR>",  { desc = "Focus Neo-Tree" })
    vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Volver al código desde Neo-tree" })
    vim.keymap.set("n", "<leader>r", ":Neotree reveal<CR>", { desc = "Reveal current file" })
    vim.keymap.set("n", "<leader>gs", ":Neotree git_status<CR>", { desc = "Git Status in Neo-Tree" })

    require("neo-tree").setup({
      close_if_last_window = true, -- cierra neotree si es la última ventana
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      filesystem = {
        filtered_items = {
          visible = false, -- muestra archivos ocultos si es true
          hide_dotfiles = true,
          hide_gitignored = true,
        },
        follow_current_file = { enabled = true }, -- abre el árbol en el archivo actual
        hijack_netrw_behavior = "open_default", -- reemplaza netrw
      },
      buffers = {
        follow_current_file = { enabled = true }, -- resalta el buffer actual
      },
      git_status = {
        window = { position = "float" }, -- abre git status en ventana flotante
      },
    })
  end,
}




