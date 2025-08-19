return {
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  dependencies = { "hrsh7th/nvim-cmp" }, -- Asegura que nvim-cmp cargue antes
  config = function()
    require('nvim-autopairs').setup({})
    
    -- Integración con nvim-cmp
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end
}
