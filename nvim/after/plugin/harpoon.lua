local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>'", mark.add_file, { desc = "Add file to harpoon" })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu , { desc = "Toggle harpoon menu" })

vim.keymap.set("n", "<C-0>", function() ui.nav_file(1) end, { desc = "Navigate to file 1" })
vim.keymap.set("n", "<C-9>", function() ui.nav_file(2) end, { desc = "Navigate to file 2" })
vim.keymap.set("n", "<C-8>", function() ui.nav_file(3) end, { desc = "Navigate to file 3" })
