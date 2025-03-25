-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { import = "plugins.configs"}
}, {
  ui = { border = "rounded"}
})

-- Configuración color del gitSigns

vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#58d68d", bg = "NONE" }) -- Verde brillante
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#ffcc00", bg = "NONE" }) -- Amarillo más claro
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#ff0000", bg = "NONE" }) -- Rojo fuerte

