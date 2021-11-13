local M = {}

M.setup = function()
  require('nvim-treesitter.configs').setup({
    ensure_installed = {
      "javascript",
      "typescript",
      "php",
    }
  })
end

return M
