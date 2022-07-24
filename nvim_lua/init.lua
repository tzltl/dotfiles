local install_path = vim.fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
end

require("mapping")
require("plugins")

vim.cmd "set mouse=a"
vim.cmd "colorscheme iceberg"
vim.cmd "highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40"
vim.cmd "highlight Normal ctermbg=NONE guibg=NONE guifg=#c0c0c0"
vim.cmd "highlight LineNr cterm=NONE ctermfg=NONE ctermbg=NONE guifg=#00afaf guibg=NONE"
vim.cmd "highlight CursorLineNr guibg=NONE guifg=#5fafff"
vim.cmd "set clipboard+=unnamed"

vim.opt.hlsearch = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.autoindent = true
vim.opt.shiftwidth=2
vim.opt.softtabstop=2
vim.opt.tabstop=2
vim.opt.expandtab=true
vim.opt.smarttab=true
vim.opt.wrap=true
vim.opt.ignorecase=true
vim.opt.smartcase=true
vim.opt.wrapscan=true
vim.opt.gdefault=true
vim.opt.hidden=true
vim.opt.backup=false
vim.opt.undofile=false
vim.opt.swapfile=false
vim.opt.splitright=true
vim.opt.splitbelow=true
