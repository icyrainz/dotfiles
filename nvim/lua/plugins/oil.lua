return {
  "stevearc/oil.nvim",
  init = function()
    vim.keymap.set("n", "<leader>-", require('oil').open, { noremap = true, silent = true, desc = "Open oil" })
  end,
  opts = {
    default_file_explorer = false,
    float = {
      max_width = 50,
      max_height = 20,
    },
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      ["<c-v>"] = "actions.select_vsplit",
      ["<c-s>"] = "actions.select_split",
      ["<c-t>"] = "actions.select_tab",
      ["<c-p>"] = "actions.preview",
      ["<c-c>"] = "actions.close",
      ["q"] = "actions.close",
      ["<leader>r"] = "actions.refresh",
      ["="] = "actions.parent",
      ["_"] = "actions.open_cwd",
      ["`"] = "actions.cd",
      ["~"] = "actions.tcd",
      ["g."] = "actions.toggle_hidden",
    },
    use_default_keymaps = false,
  },
}
