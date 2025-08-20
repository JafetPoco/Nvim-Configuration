return {

{
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    integrations = {
      cmp = true,
      telescope = true,
      treesitter = true,
      navic = true,
      lualine = true,
      gitsigns = true,
    },
  },
},

{
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = false,
  priority = 1000,
  config = function()
    require("rose-pine").setup({
      styles = {
        bold = true,
        italic = true,
      },
    })
  end,
},

{
  "navarasu/onedark.nvim",
  priority = 1000,
  config = function()
    require("onedark").setup {
      style = "warm", -- dark, darker, cool, deep, warm, warmer, light
    }
    require("onedark").load()
  end,
},

{
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = true,
}
  
}
