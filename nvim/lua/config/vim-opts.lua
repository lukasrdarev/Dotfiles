
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

-- ========== [highlight yanked] ==========
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})
