return {
  "akinsho/git-conflict.nvim",
  version = "*",
  config = function()
    require("git-conflict").setup({
      default_mappings = true,
      disable_diagnostics = true,
      highlights = {
        incoming = "DiffAdd",
        current = "DiffText",
      },
    })
  end,
}

