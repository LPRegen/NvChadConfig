---@type MappingsConfig
local M = {}

M.disabled = {
  n = {
    -- tabufline
    ["<S-Tab>"] = "",

    -- nvterm
    ["<A-i>"] = "",
    ["<leader>pt"] = "",

    -- gitsigns
    ["<leader>ph"] = "",
    ["<leader>rh"] = "",
    ["<leader>td"] = "",
  },

  i = {
    -- nvterm
    ["<A-i>"] = "",
  },
}

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

M.gitsigns = {
  n = {
    ["<leader>ga"] = {
      function()
        require("gitsigns").stage_buffer()
      end,
      "Stage buffer"
    },

    ["<leader>gr"] = {
      function()
        require("gitsigns").reset_hunk()
      end,
      "Reset hunk",
    },

    ["<leader>gR"] = {
      function()
        require("gitsigns").reset_buffer()
      end,
      "Reset buffer",
    },

    ["<leader>gp"] = {
      function()
        require("gitsigns").preview_hunk()
      end,
      "Preview hunk",
    },

    ["<leader>gb"] = {
      function()
        package.loaded.gitsigns.blame_line()
      end,
      "Blame line",
    },

    ["<leader>gt"] = {
      function()
        require("gitsigns").toggle_deleted()
      end,
      "Toggle deleted",
    },
  },
}

return M
