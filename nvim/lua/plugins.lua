require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'mfussenegger/nvim-dap' -- Debugger
  use 'nvim-lua/plenary.nvim' -- Needed for cmake
  use 'Shatur/neovim-tasks' -- Cmake things
  -- Autocompletion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  ------------------------
  use 'sainnhe/gruvbox-material' -- Color Theme
  use 'preservim/nerdtree'
  use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
 use 'vim-airline/vim-airline'
end)


