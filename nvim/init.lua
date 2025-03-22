
-- ========== [Leader key remap] ==========
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- ========== [lazy package manager] ==========
require("config.lazy")

-- ========== [general] ==========
vim.opt.number = true 
vim.opt.relativenumber = true
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- ========== [theme] ==========
vim.cmd("colorscheme aura-dark")
--vim.cmd("colorscheme retrobox")
-- use terminal background color
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")

