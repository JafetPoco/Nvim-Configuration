return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
  },

  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        layout_strategy = 'horizontal',
        layout_config = {
          horizontal = { width = 0.7, height = 0.9, preview_width = 0.6},
        },
        sorting_strategy = "ascending",
        prompt_prefix = "   ",
        selection_caret = " ",
        path_display = { "smart" },
      },

      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {}
        }
      }
    })

    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })  -- Busca archivos rapidamente
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })    -- BUsca texto dentro de un archivo a tiempo real
                                                                                              -- OJO: Requiere que ripgrep (rg) esté instalado.!!!!!!!!!!
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })        -- Muestra los archivos del buffer de nvim
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })    -- Muestra la documentación de nvim
    vim.keymap.set('n', '<leader>ft', builtin.colorscheme, { desc = 'Telescope color scheme' })    -- Muestra los temas disponibles 
    vim.keymap.set('n', '<leader>co', builtin.git_commits, { desc = 'Telescope git commits' })    -- Muestra la lista de los commits 
    vim.keymap.set('n', '<leader>br', builtin.git_branches, { desc = 'Telescope git commits' })    -- Muestra las ramas del repositorio git

    vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'Archivos recientes' })  -- Archivos recientes
    --vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Archivos modificados en git' })  -- Git status
    vim.keymap.set('n', '<leader>km', builtin.keymaps, { desc = 'Buscar keymaps' })
    vim.keymap.set('n', '<leader>cc', builtin.commands, { desc = 'Buscar comandos' })


    telescope.load_extension("ui-select")

  end
}
