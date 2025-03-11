local function memory_usage()
  local handle = io.popen("ps -o rss= -p " .. vim.fn.getpid())
  local result = handle:read("*a")
  handle:close()
  local memory_kb = tonumber(result) or 0
  return string.format("RAM: %.2f MB", memory_kb / 1024)
end


return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      sections = {
       lualine_x = {'encoding', 'fileformat', 'filetype', memory_usage}
      }
    })
  end
}
