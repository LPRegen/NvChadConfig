---@type MappingsConfig
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>bv"] = { ":vsplit <CR>", "split buffer vertically" },
    ["<leader>qq"] = { ":qa! <CR>", "Close all files and exit nvim" },
    ["<A-j>"] = { ":m .+1<CR>", "Move line down" },
    ["<A-k>"] = { ":m .-2<CR>", "Move line up" },
  },
}

M.nvterm = {
  t = {
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },
  n = {
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },
}

M.tabufline = {
  n = {
    ["<TAB>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },
    ["<A-Tab>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },
  },
}


return M
