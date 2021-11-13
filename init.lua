local vim = vim

require('sets').setup()
require('autocmds').setup()
require('plugins').setup()

vim.cmd [[colorscheme darkblue]]

-- LSP
require('lsp.lua-ls').setup()
