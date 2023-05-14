return {
  "voldikss/vim-floaterm",
  config = function()
    vim.keymap.set('n', "<leader>t", ":FloatermToggle<CR>", { desc = "Toggle terminal" })
    vim.keymap.set('n', "<F5>", ":FloatermToggle<CR>", { desc = "Toggle terminal" })
    vim.keymap.set('t', "<F5>", "<C-\\><C-n>:FloatermToggle<CR>", { desc = " Toggle terminal" })
    vim.keymap.set('n', "<F6>", ":FloatermNew<CR>", { desc = "New terminal" })
    vim.keymap.set('t', "<F6>", "<C-\\><C-n>:FloatermNew<CR>", { desc = "New terminal" })
    vim.keymap.set('n', "<F7>", ":FloatermKill!<CR>", { desc = "Kill terminal" })
    vim.keymap.set('t', "<F7>", "<C-\\><C-n>:FloatermKill!<CR>", { desc = "Kill terminal" })
    vim.keymap.set('n', "<a-n>", ":FloatermNext<CR>", { desc = "Next terminal" })
    vim.keymap.set('t', "<a-n>", "<C-\\><C-n>:FloatermNext<CR>", { desc = "Next terminal" })
    vim.keymap.set('n', "<a-p>", ":FloatermPrev<CR>", { desc = "Previous terminal" })
    vim.keymap.set('t', "<a-p>", "<C-\\><C-n>:FloatermPrev<CR>", { desc = "Previous terminal" })

    vim.keymap.set('t', "<Esc>", "<C-\\><C-n>", { desc = "Switch from terminal to normal mode" })
  end,
}
