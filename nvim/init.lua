
-- ========== [Leader key remap] ==========
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- ========== [general] ==========
require("config.lazy")

-- ========== [general] ==========
vim.opt.number = true 
vim.opt.relativenumber = true

-- ========== [theme] ==========
vim.cmd("colorscheme aura-dark")
--vim.cmd("colorscheme retrobox")
-- use terminal background color
--vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
