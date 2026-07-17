
-- ========== [general] ==========
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.equalalways = true
vim.opt.termguicolors = true
vim.opt.confirm = true
vim.opt.mouse = ""

-- ========== [theme] ==========
vim.cmd("colorscheme default")
 -- vim.cmd("colorscheme aura-dark")
--vim.cmd("colorscheme retrobox")
-- use terminal background color
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")

-- ========== [highlight yanked] ==========
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})


