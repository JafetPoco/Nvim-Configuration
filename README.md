
# 🚀 Configuración de Neovim

Este repositorio contiene mi configuración personalizada de **Neovim**, enfocada en productividad, desarrollo en C/C++, Git y programación competitiva.  

## 🔌 Plugins incluidos

### 🎨 Apariencia
- **tokyonight.nvim** → Colores principal del editor.  
- **mocha** (Catppuccin) → Tema alternativo para el editor.  

### 🖊️ Edición de código
- **nvim-autopairs** → Inserta automáticamente paréntesis, comillas y corchetes.  
- **todo-comments.nvim** → Resalta y lista comentarios como `TODO`, `FIX`, `NOTE`, etc.  
- **Comment.nvim** → Atajos rápidos para comentar/descomentar código.  

### 🔍 Navegación y búsqueda
- **telescope.nvim** → Búsqueda avanzada de archivos, texto, buffers, keymaps y más.  
- **neo-tree.nvim** → Árbol de directorios interactivo.  
- **window-picker.nvim** → Selector de ventanas para moverse más rápido.  
- **trouble.nvim** → Muestra diagnósticos, quickfix y listas de errores en panel lateral.  

### 📊 Sintaxis y análisis
- **nvim-treesitter** → Resaltado de sintaxis avanzado y selección estructural del código.  
- **nvim-lspconfig** → Servidor de Lenguaje para autocompletado y diagnósticos.  
- **mason.nvim** → Gestor de servidores LSP, DAP y linters/formatters.  

### 🧑‍💻 Git
- **git-conflict.nvim** → Resolver conflictos de merge de forma visual.  
- **gitsigns.nvim** → Indicadores en el margen con cambios (added/removed/modified).  
- **blame.nvim** → Mostrar autores de cada línea (`git blame`).  
- **diffview.nvim** → Visualizar diferencias (`git diff`) y merges.  

### 🏆 Programación competitiva
- **competitest.nvim** → Descargar problemas de Codeforces, ejecutar y testear soluciones.  

---

## ⌨️ Teclas especiales
- `<CR>` → **Enter**  
- `<BS>` → **Backspace**  
- `<Tab>` → **Tabulador**  

> 🔑 La tecla **Leader** es el **espacio** (`<Space>`).  

---

## 📑 Tabla de Contenidos
- [Atajos de teclado](#-atajos-de-teclado)  
  - [Nvim](#nvim)  
  - [Comentarios](#comentarios)  
  - [Explorador de Archivos (Neo-Tree)](#explorador-de-archivos-neo-tree)  
  - [Telescope](#telescope)  
  - [Git](#git)  
    - [Diffview](#diffview)  
    - [Git-conflict](#git-conflict)  
    - [Blame](#blame)  
    - [Git-signs](#git-signs)  
  - [Autocompletado](#autocompletado)  
  - [Tree-sitter](#tree-sitter)  
  - [Trouble](#trouble)  
  - [Todo-comments](#todo-comments)  
  - [Window-picker](#window-picker)  
  - [Competitest](#competitest)
  - [ToggleTerm](#toggleTerm)

---

## 🎹 Atajos de Teclado

### Nvim
- `Ctrl+w+v` → División vertical  
- `Ctrl+w+s` → División horizontal  

---

### Comentarios
- `<leader>/` → Comentar/Descomentar línea  
- `<leader>vip` → Comentar/Descomentar parrafo
- `<leader>v5j` → Comentar/Descomentar 5 lineas hacia abajo
- `<leader>v5k` → Comentar/Descomentar 5 lineas hacia arriba

---

### Explorador de Archivos (Neo-Tree)
- `<leader>e` → Abrir/Cerrar árbol de archivos  
- `<leader>o` → Ir al árbol si está abierto  
- `<leader>l` → Regresar al código sin cerrar árbol  
- `<leader>gs` → Mostrar `git status` en ventana flotante  

---

### Telescope
- `<leader>ff` → Buscar archivos  
- `<leader>fg` → Buscar texto en archivos  
- `<leader>fb` → Buffers abiertos  
- `<leader>fr` → Archivos recientes  
- `<leader>fh` → Documentación de Nvim  
- `<leader>ft` → Temas disponibles  
- `<leader>gs` → Archivos en `git status`  
- `<leader>co` → Commits  
- `<leader>br` → Ramas  
- `<leader>km` → Keymaps  
- `<leader>cc` → Comandos  

---

## 🧑‍💻 Git

### Diffview
- `<leader>gv` → Abrir vista de Diff/Merge  
- `<leader>gh` → Historial de archivos  
- `<leader>gq` → Cerrar Diffview  
- `q` → Salir de Diffview  

### Git-conflict
- `co` → Conservar cambios actuales  
- `ct` → Conservar cambios entrantes  
- `cb` → Conservar ambos  
- `c0` → Descartar ambos  

### Blame
- `<leader>gB` → Abrir blame en ventana  
- `<leader>gb` → Mostrar autor de la línea actual  

### Git-signs
- `<leader>hp` → Previsualizar *hunk*  
- `<leader>hd` → Mostrar `git diff` contra HEAD  
- `<leader>hS` → Agregar cambios al *staged area*  

---

### Autocompletado
- `<Tab>` → Siguiente sugerencia  
- `<C-Space>` → Abrir menú de sugerencias  
- `<C-e>` → Cerrar menú  

---

### Tree-sitter
- `<CR>` → Expandir nodo actual  
- `<TAB>` → Expandir siguiente *scope*  
- `<BS>` → Reducir selección  

---

### Trouble
- `<leader>xx` → Mostrar diagnósticos  

---

### Todo-comments
- `<leader>xt` → Mostrar TODOs en `Trouble`  
- `<leader>st` → Mostrar TODOs en `Telescope`  

---

### Window-picker
- `<leader>ww` → Cambiar entre ventanas fácilmente  

---

### Competitest
- `<leader>cp` → Descargar problema de Codeforces  
- `<leader>cc` → Descargar concurso de Codeforces  
- `<leader>cr` → Ejecutar el programa  

---

### ToggleTerm
- `<leader>tf` → Mostrar terminal flotante  
- `<leader>tv` → Mostrar terminal verticalmente  
- `<leader>th` → Mostrar terminal horizontalmente  

---

## 📌 Notas
- Todos los atajos están organizados por categorías.  
- Se recomienda instalar **Nerd Fonts** para mejor visualización de iconos.  
- Compatible con **Neovim >= 0.9**. 
- En caso no funcione el copiado/pegado de portapapeles, posible solucion:

1. diagnosticar problema:
:checkhealth clipboard
2. Si aparece `NOT FOUND` falta instalar el puente:
3. Detectar servidor gráfico:
echo $XDG_SESSION_TYPE
4. si es xclip o xsel instalar:
sudo pacman -S xclip
5. si es Wayland aplica:
sudo pacman -S wl-clipboard
6. verificar q en la configuracion de nvim este activo:
-- Para init.lua
vim.opt.clipboard = "unnamedplus"

