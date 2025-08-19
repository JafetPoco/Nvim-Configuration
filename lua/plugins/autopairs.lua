return {
  'windwp/nvim-autopairs',
  event = "InsertEnter",

  config = function()
    local npairs = require('nvim-autopairs')
    local Rule = require("nvim-autopairs.rule")

    npairs.setup({
      check_ts = true,
      ts_config = {
        cpp = { "string" }, -- no autopair dentro de string
        lua = { "string" },
      }
    })

    npairs.add_rules({ -- Nuevas reglas para c++
      Rule("<", ">", "cpp"),
      Rule("/*", "*/", "cpp"),
    })

    -- Integracion con cmp (si está instalado)
    local ok_cmp, cmp = pcall(require, "cmp")
    if ok_cmp then
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
      end
    end,
}
