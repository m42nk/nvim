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

    use {
      'nvim-treesitter/nvim-treesitter',
      config = function()
        require('m42nk/treesitter').setup()
      end
      
    }
    use 'nvim-treesitter/nvim-treesitter-textobjects'

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'

    use { 
      'nvim-telescope/telescope.nvim', 
      requires = { 'nvim-lua/plenary.nvim' },
      config = function()
        require('m42nk/telescope').setup()
      end
    }

    use {
      'marko-cerovac/material.nvim',
      config = function()
        require('material').setup({
          contrast = true,
          borders = false,
          text_contrast = {
            lighter = true,
            darker = true,
          },
        })
      end
    }

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      as = 'lualine',
      config = function()
        require('lualine').setup({
          theme = 'material-nvim',
        })
      end
    }

  end)

  vim.g.material_style = "oeceanic"
  vim.cmd 'colorscheme material'
end

return O

-- -- Install packer
-- require('packer').startup(function()
--   use 'wbthomason/packer.nvim' -- Package manager
--   use 'tpope/vim-fugitive' -- Git commands in nvim
--   use 'tpope/vim-rhubarb' -- Fugitive-companion to interact with github
--   use 'tpope/vim-commentary' -- "gc" to comment visual regions/lines
--   use 'ludovicchabant/vim-gutentags' -- Automatic tags management
--   -- UI to select things (files, grep results, open buffers...)
--   use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
--   use 'joshdick/onedark.vim' -- Theme inspired by Atom
--   use 'itchyny/lightline.vim' -- Fancier statusline
--   -- Add indentation guides even on blank lines
--   use 'lukas-reineke/indent-blankline.nvim'
--   -- Add git related info in the signs columns and popups
--   use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
--   -- Highlight, edit, and navigate code using a fast incremental parsing library
--   use 'nvim-treesitter/nvim-treesitter'
--   -- Additional textobjects for treesitter
--   use 'nvim-treesitter/nvim-treesitter-textobjects'
--   use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
--   use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
--   use 'hrsh7th/cmp-nvim-lsp'
--   use 'saadparwaiz1/cmp_luasnip'
--   use 'L3MON4D3/LuaSnip' -- Snippets plugin
-- end)
