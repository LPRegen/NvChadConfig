---@type MappingsConfig
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>bv"] = { ":vsplit <CR>", "split buffer vertically" },
  },
}

-- more keybinds!

return M
