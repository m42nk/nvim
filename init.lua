local vim = vim

require('sets').setup()
require('autocmds').setup()
require('plugins').setup()

vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.g.material_style = "darker"
vim.g.material_disable_background = true

vim.cmd [[colorscheme material]]
vim.cmd [[
hi Normal guibg=NONE ctermbg=NONE

let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Ex
    endif
endfunction

noremap <silent> <space>e :call ToggleNetrw()<CR>
]]

-- LSP
-- require('lsp.lua-ls').setup()
