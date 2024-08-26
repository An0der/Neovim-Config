-- Sets numeraion
vim.opt.number = true
vim.opt.relativenumber = true

-- Sets tabsize
vim.opt.tabstop = 4;
vim.opt.shiftwidth = 4;
vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
