---@type MappingsConfig
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>bv"] = { ":vsplit <CR>", "split buffer vertically" },
    ["<leader>qq"] = { ":qa! <CR>", "Close all files and exit nvim" },
    ["<A-j>"] = {":m .+1<CR>", "Move line down"},
    ["<A-k>"] = {":m .-2<CR>", "Move line up"},
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

return M
