local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",
    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
  },
}

M.nvimtree = {
  view = {
    -- Custom keybindings
    mappings = {
      list = {
        { key = { "<CR>", "o", "l" }, action = "edit" },
        { key = "h", action = "close_node" },
      },
    },
  },

  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
      glyphs = {
        git = {
          unstaged = "",
          untracked = "",
        },
      },
    },
  },
}

return M
