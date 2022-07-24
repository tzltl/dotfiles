require("packer").startup(function(use)
  use "nvim-treesitter/nvim-treesitter"
  use "wbthomason/packer.nvim"
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-vsnip"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/vim-vsnip"
  use "lambdalisue/fern.vim"
  use "cocopon/iceberg.vim"
  use "lambdalisue/nerdfont.vim"
  use "lambdalisue/fern-renderer-nerdfont.vim"
  use 'beauwilliams/statusline.lua'

  if packer_bootstrap then
    require("packer").sync()
  end
end)

vim.api.nvim_set_keymap('n', 'ff', ':Fern . -drawer -reveal=% -width=30<CR>', { noremap = true, silent = true })

vim.cmd "let g:fern#renderer = 'devicons'"
vim.cmd "let g:fern#renderer = 'nerdfont'"
