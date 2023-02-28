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

  ["goolord/alpha-nvim"] = {
    disable = false,
    config = function()
      require "custom.plugins.configs.alpha"
    end,
  },

  ["simrat39/rust-tools.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.configs.rust-tool"
    end,
  },

  ["lewis6991/gitsigns.nvim"] = {
    current_line_blame = true,
  },

  ["loctvl842/monokai-pro.nvim"] = {
    config = function()
      require "custom.plugins.configs.monokai-pro"
    end,
  },

  ["nvim-lualine/lualine.nvim"] = {
    config = function()
      require "custom.plugins.configs.lualine"
    end,
  },

  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}

return plugins
