---@type MappingsConfig
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>bv"] = { ":vsplit <CR>", "split buffer vertically" },
    ["<leader>qq"] = { ":qa! <CR>", "Close all files and exit nvim" },
  },
}

-- more keybinds!

return M
