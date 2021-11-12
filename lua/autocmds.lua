local O = {}

local vim = vim

local augroups = {
  [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
  ]],
  [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
  ]],
}

O.setup = function()
  for _,v in ipairs(augroups) do
    vim.cmd(v)
  end
end

return O
