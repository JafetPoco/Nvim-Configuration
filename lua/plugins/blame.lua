return {
  {
    "FabijanZulj/blame.nvim",
    cmd = { "BlameToggle", "BlameEnable", "BlameDisable" },
    keys = {
      { "<leader>gB", "<cmd>BlameToggle window<CR>", desc = "Git blame (window)" },
      { "<leader>gb", "<cmd>BlameToggle virtual<CR>", desc = "Git blame (virtual text)" },
    },
    config = function()
      require("blame").setup({
        -- Modo por defecto: puede ser "virtual" o "window"
        default = "virtual",

        -- Muestra la fecha en formato relativo ("2 days ago") o absoluto
        date_format = "%Y-%m-%d %H:%M",

        -- Opciones para ventana flotante
        window = {
          style = "minimal",
          relative = "cursor",
          border = "rounded",
        },

        -- Opciones para virtual text
        virtual = {
          text_align = "right", -- muestra el blame a la derecha
          virt_text_pos = "eol",
        },
      })
    end,
  },
}

