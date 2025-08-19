vim.opt.number = true                     --Activa números de línea
vim.opt.relativenumber = false            --Número relativos
vim.opt.tabstop = 2                       --Define el ancho de un tabulador
vim.opt.shiftwidth = 2                    --Define el ancho de indentación
vim.opt.expandtab = true                  --Usa espacios en lugar de tabs
vim.opt.cursorline = false                --Resalta la línea actual
vim.opt.scrolloff = 8                     --Mantiene margen de 8 lineas al hacer scroll
-- vim.opt.termguicolors = true --Habilita colores en la terminal
vim.opt.hlsearch = true                   --Resalta las búsquedas
vim.opt.clipboard = "unnamedplus"         --Copia/pega con el portapapeles del sistema
vim.opt.fillchars:append({ eob = " " })   -- Reemplaza las virgulillas con espacios vacíos

