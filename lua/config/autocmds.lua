-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Augroups and related settings
vim.cmd([[
  " Setting the color column for specific file types
  augroup any
  autocmd FileType * set tabstop=2 colorcolumn=200 shiftwidth=2 expandtab textwidth=199
  augroup END

  augroup cc
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c
  autocmd FileType c set colorcolumn=80 tabstop=8 shiftwidth=8 expandtab nocursorcolumn textwidth=79
  augroup END

  augroup cp
  autocmd BufRead,BufNewFile *.hpp,*.cpp set filetype=cpp
  autocmd FileType cpp set colorcolumn=120 tabstop=2 shiftwidth=2 expandtab nocursorcolumn textwidth=119
  augroup END

  augroup python
  autocmd BufRead,BufNewFile *.py set filetype=python
  autocmd FileType python set colorcolumn=120 tabstop=4 shiftwidth=4 expandtab nocursorcolumn textwidth=119
  augroup END

  augroup go
  autocmd BufRead,BufNewFile *.go set filetype=go
  autocmd FileType go set colorcolumn=80 tabstop=4 shiftwidth=4 expandtab nocursorcolumn textwidth=79
  augroup END

  augroup ruby
  autocmd BufRead,BufNewFile *.rb set filetype=ruby
  autocmd FileType ruby set colorcolumn=80 tabstop=8 shiftwidth=8 expandtab nocursorcolumn textwidth=79
  augroup END

  augroup tex
  autocmd BufRead,BufNewFile *.tex set filetype=tex
  autocmd FileType tex set colorcolumn=120 tabstop=4 shiftwidth=4 expandtab nocursorcolumn textwidth=119
  augroup END

  augroup lisp
  autocmd BufRead,BufNewFile *.lisp set filetype=lisp
  autocmd FileType lisp set colorcolumn=120 tabstop=8 shiftwidth=8 expandtab nocursorcolumn textwidth=119
  "autocmd FileType lisp let b:delimitMate_autoclose = 0
  augroup END

  " Adding the time addition shortcut
  :nnoremap <F10> "=strftime("%a, %d %b %Y %H:%M:%S %z") . " : "<CR>P
  :inoremap <F10> <C-R>=strftime("%a, %d %b %Y %H:%M:%S %z") . " : "<CR>
]])
