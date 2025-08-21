return {
  "numToStr/Comment.nvim",
  dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
  -- Lazy load: se carga por teclas o cuando abras buffer
  event = "BufReadPost",
  keys = {
    { "<leader>v", "<Plug>(comment_toggle_linewise_current)", mode = "n", desc = "Comentar Linea" },
    { "<leader>v", "<Plug>(comment_toggle_linewise_visual)", mode = "x", desc = "Commentar Lineas selección" },
    { "<leader>V", "<Plug>(comment_toggle_blockwise_current)", mode = "n", desc = "Comentar Bloque" },
    { "<leader>V", "<Plug>(comment_toggle_blockwise_visual)", mode = "x", desc = "Comentar Bloque Selección" }
  },
  opts = function()
    local opts = {
      padding = true,
      sticky = true,
      ignore = "^$", -- no comenta líneas vacías
      toggler = {
        line = "gcc",
        block = "<leader>G",
      },
      opleader = {
        line = "gc",
        block = "gb",
      },
      extra = {
        above = "gcO",
        below = "gco",
        eol   = "gcA",
      },
    }

    -- Integración con ts-context-commentstring (si está disponible)
    local ok, tcc = pcall(require, "ts_context_commentstring.integrations.comment_nvim")
    if ok then
      opts.pre_hook = tcc.create_pre_hook()
    end

    return opts
  end,
}
