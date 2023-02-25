---@type MappingsConfig
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>bv"] = { ":vsplit <CR>", "split buffer vertically" },
    ["<leader>qq"] = { ":qa! <CR>", "Close all files and exit nvim" },
  },
}

M.nvterm = {
  t = {
    ["<A-\\>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },

  n = {
    ["<A-\\>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },
}

-- more keybinds!

return M
