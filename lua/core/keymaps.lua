vim.g.mapleader = " "
vim.g.malocalleader = " "

vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.mouse = ""
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- Close quickfix list after selecting an option from it
vim.cmd([[autocmd FileType qf nnoremap <buffer> <CR> <CR>:cclose<CR>]])
