vim.keymap.set('n', "<leader>t", ":FloatermToggle<CR>", { desc = "Toggle terminal" })
vim.keymap.set('t', "<F5>", "<C-\\><C-n>:FloatermNew<CR>", { desc = "New terminal" })
vim.keymap.set('t', "<F6>", "<C-\\><C-n>:FloatermKill<CR>", { desc = "Kill terminal" })
vim.keymap.set('t', "<F4>", "<C-\\><C-n>:FloatermNext<CR>", { desc = "Next terminal" })
vim.keymap.set('t', "<F3>", "<C-\\><C-n>:FloatermPrev<CR>", { desc = "Previous terminal" })
vim.keymap.set('t', "<Esc>", "<C-\\><C-n>:FloatermHide<CR>", { desc = "Hide terminal" })
