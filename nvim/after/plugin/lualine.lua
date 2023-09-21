local git_blame = require("gitblame")
local lualine = require("lualine")
local noice = require("noice")
local cool_substitute_status = require('cool-substitute.status')

local function get_truncated_blame_text()
  local blame_text = git_blame.get_current_blame_text()
  if #blame_text > 100 then
    return string.sub(blame_text, 1, 100) .. " >>"
  else
    return blame_text
  end
end

lualine.setup({
  sections = {
    lualine_c = {
      { get_truncated_blame_text, cond = git_blame.is_blame_text_available },
    },
    lualine_x = {
      {
        noice.api.status.mode.get,
        cond = noice.api.status.mode.has,
        color = { fg = "#ff9e64" },
      },
      {
        cool_substitute_status.status_with_icons,
        color = function() return { fg = cool_substitute_status.status_color() } end
      },
      {
        noice.api.status.command.get,
        cond = noice.api.status.command.has,
        color = { fg = "#ff9e64" },
      },
      'encoding',
      'fileformat',
      'filetype'
    },
  },
})
