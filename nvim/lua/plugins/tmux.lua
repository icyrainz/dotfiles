return {
  enabled = false,
  "aserowy/tmux.nvim",
  event = "VeryLazy",
  keys = {
    { "<C-h>", "<cmd>lua require('tmux').resize_left()<CR>", silent = true, desc = "Resize left" },
    { "<C-j>", "<cmd>lua require('tmux').resize_bottom()<CR>", silent = true, desc = "Resize down" },
    { "<C-k>", "<cmd>lua require('tmux').resize_top()<CR>", silent = true, desc = "Resize up" },
    { "<C-l>", "<cmd>lua require('tmux').resize_right()<CR>", silent = true, desc = "Resize right" },
  },
  opts = {
    copy_sync = {
      enable = false,
    },
    navigation = {
      cycle_navigation = false,
      enable_default_keybindings = true,
    },
    resize = {
      resize_step_x = 5,
      resize_step_y = 2,
    }
  }
}
