return {
  "terrortylor/nvim-comment",
  config = function()
    require('nvim_comment').setup({
      -- Cambiar los atajos principales
      line_mapping = "<leader>/",        -- En lugar de gcc, usa <leader>/
      operator_mapping = "<leader>v",    -- En lugar de gc, usa <leader>v

      -- Otras opciones útiles
      marker_padding = true,   -- Añade un espacio después del símbolo de comentario
      comment_empty = false,   -- No comentar líneas vacías
    })
  end
}
