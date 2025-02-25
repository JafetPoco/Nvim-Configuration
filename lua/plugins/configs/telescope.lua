return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    -- Configurar Telescope
    require('telescope').setup({})

    -- Definir keymaps
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })  -- Busca archivos rapidamente
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })    -- BUsca texto dentro de un archivo a tiempo real
                                                                                              -- OJO: Requiere que ripgrep (rg) esté instalado.!!!!!!!!!!
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })        -- Muestra los archivos del buffer de nvim
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })    -- Muestra la documentación de nvim
    vim.keymap.set('n', '<leader>th', builtin.colorscheme, { desc = 'Telescope color scheme' })    -- Muestra los temas disponibles 
  end
}
