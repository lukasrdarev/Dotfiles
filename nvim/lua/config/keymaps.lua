
-- =========== [ switcginh between panes with ctrl+hjkl] ===========

-- Normal mode
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Insert mode
vim.keymap.set("i", "<C-h>", "<Esc><C-w>h", { noremap = true, silent = true })
vim.keymap.set("i", "<C-j>", "<Esc><C-w>j", { noremap = true, silent = true })
vim.keymap.set("i", "<C-k>", "<Esc><C-w>k", { noremap = true, silent = true })
vim.keymap.set("i", "<C-l>", "<Esc><C-w>l", { noremap = true, silent = true })

