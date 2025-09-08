return {
  "xeluxee/competitest.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  config = function()
    require("competitest").setup({
      -- Carpeta donde se guardarán los problemas
      testcases_directory = "testcases",

      -- Plantilla para tus archivos de competencia
      template_file = vim.fn.expand("~/.config/nvim/lua/plugins/template.cpp"),

      -- Comando para compilar (C++ como ejemplo)
      compile_command = {
        cpp = {
          exec = "g++",
          args = { "-Wall", "-std=c++17", "$(FNAME)", "-o", "$(FNOEXT)" },
        },
        c = {
          exec = "gcc",
          args = {"-Wall", "$(FNAME)", "-o", "$(FNOEXT)"}
        }
      },

      -- Comando para ejecutar
      run_command = {
        cpp = { exec = "./$(FNOEXT)" },
        c = {exec = "./$(FNOEXT)"},
        python = { exec = "python", args = {"$(FNAME)"}}
      },

      -- Ruta donde se descargan problemas
      received_problems_path = "$(CWD)/problems",
      received_files_extension = "cpp",

      -- Configuración de la UI flotante
      floating_border = "rounded",
      floating_border_highlight = "FloatBorder",
      picker_ui = {
        width = 0.3,
        height = 0.3,
        border = "rounded",
      },
    })

    -- 🎹 Atajos útiles
    local map = vim.keymap.set
    map("n", "<leader>cr", "<cmd>CompetiTest run<CR>", { desc = "Run testcases" })
    map("n", "<leader>ca", "<cmd>CompetiTest add_testcase<CR>", { desc = "Add testcase" })
    map("n", "<leader>cO", "<cmd>CompetiTest show_ui<CR>", { desc = "Open CompetiTest UI" })
    map("n", "<leader>cp", "<cmd>CompetiTest receive problem<CR>", { desc = "Download problem" })
    map("n", "<leader>cc", "<cmd>CompetiTest receive contest<CR>", { desc = "Download contest" })
  end,
}
