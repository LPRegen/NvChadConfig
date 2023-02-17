local present, nvterm = pcall(require, "nvterm")

if not present then
  return
end

require "base46.term"

local options = {
  terminals = {
    type_opts = {
      float = {
        relative = "editor",
        row = 0.1,
        col = 0.1,
        width = 0.8,
        height = 0.7,
        border = "single",
      },
    },
  },
}

options = require("core.utils").load_override(options, "NvChad/nvterm")

nvterm.setup(options)
