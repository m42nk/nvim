local O = {}

local vim = vim
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

local use = require('packer').use

O.setup = function()
  local packer = require('packer')
  local util = require('packer.util')

  packer.init({
    package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
  })

  packer.startup(function()
    use 'wbthomason/packer.nvim'
    use 'tpope/vim-vinegar'
    use {
      'marko-cerovac/material.nvim',
      config = function()
        require('material').setup({
          popup_menu = "dark", -- Popup menu style ( can be: 'dark', 'light', 'colorful' or 'stealth' )

          disable = {
            background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
            term_colors = false, -- Prevent the theme from setting terminal colors
          },
        })
    end
    }

    use {
      'neovim/nvim-lspconfig',
      config = function()
        require('lsp/config').setup()
      end
    }

    use {
      'williamboman/nvim-lsp-installer',
      config = function()
        require('lsp/installer').setup()
      end
    }


    --     use {
    --       'nvim-treesitter/nvim-treesitter',
    --       config = function()
    --         require('user/treesitter').setup()
    --       end
    --     }
    --     
    --     use 'nvim-treesitter/nvim-treesitter-textobjects'

    --     use 'hrsh7th/nvim-cmp'
    --     use 'hrsh7th/cmp-nvim-lsp'

  end)
end

return O
