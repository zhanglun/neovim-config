local present, monokai = pcall(require, "monokai-pro")

if not present then
  return
end

local opts = {
  transparent_background = true,
  terminal_colors = true,
  devicons = true, -- highlight the icons of `nvim-web-devicons`
  italic_comments = true,
  filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
  -- Enable this will disable filter option
  day_night = {
    enable = false, -- turn off by default
    day_filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
    night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
  },
  inc_search = "background", -- underline | background
  background_clear = {
    "float_win",
    -- "toggleterm",
    -- "telescope",
    -- "which-key",
    -- "renamer"
  },-- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree"
  plugins = {
    indent_blankline = {
      context_highlight = "pro", -- default | pro
      context_start_underline = false,
    },
  },
  ---@param c Colorscheme
  override = function(c) end,
}

monokai.setup(opts)
