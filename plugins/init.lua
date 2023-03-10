local overrides = require "custom.plugins.overrides"

---@type {[PluginName]: NvPluginConfig|false}
local plugins = {
  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["NvChad/ui"] = {
    override_options = overrides.ui,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["nvim-tree/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  -- Install a plugin
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["folke/which-key.nvim"] = {
    disable = false,
    config = function()
      require "custom.plugins.whichkey"
    end,
  },

  ["windwp/nvim-ts-autotag"] = {
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  ["NvChad/nvterm"] = {
    config = function()
      require "custom.plugins.configs.nvterm"
    end,
  },

  ["lewis6991/gitsigns.nvim"] = {
    override_options = overrides.gitsigns,
  },

  ["ethanholz/nvim-lastplace"] = {
    config = function()
      require "nvim-lastplace"
      require "custom.plugins.configs.last-place"
    end,
  },
}

return plugins
