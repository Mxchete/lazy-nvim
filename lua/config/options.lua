-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- Main Configs
vim.cmd("set nu rnu")
vim.cmd("let g:python3_host_prog = 'C:Python311python.exe'")
-- vim.cmd([[colorscheme tokyonight-night]])
vim.cmd("set termguicolors")
vim.cmd("set ai")
vim.cmd("set si")
vim.cmd("set et")
vim.cmd("set scrolloff=8")

-- Default indent is 2 spaces
vim.cmd("set sw=2")
vim.cmd("set sr")
vim.cmd("set sts=2")

-- for Java or Python (may expand later, use 4 spaces)
vim.cmd("autocmd Filetype java setlocal ts=4 sw=4 sts=0 expandtab")
vim.cmd("autocmd Filetype python setlocal ts=4 sw=4 sts=0 expandtab")

-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
