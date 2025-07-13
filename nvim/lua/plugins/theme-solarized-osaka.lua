-- ~/.config/nvim/lua/plugins/theme-solarized-osaka.lua
--

return {
  "craftzdog/solarized-osaka.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  -- custome config
  config = function()
    require("solarized-osaka").setup({
      -- your config comes here
      -- or leave it empty to use the default settings
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "transparent",
        floats = "transparent",
      },
      sidebars = { "qf", "help" },
      day_brightness = 0.3,
      hide_inactive_statusline = false,
      dim_inactive = false,
      lualine_bold = false,

      --- you can override specific color groups to use other groups or a gex color
      --- function will be called with a ColorScheme table
      --- @param colors ColorScheme
      on_colors = function(colors) end,

      --- you can override specific hightlights to use other groups or a hex color
      --- function will be called with a hightlights and ColorScheme table
      ---@param highlights Highlights
      ---@param colors ColorScheme
      on_highlights = function(highlights, colors) end,
    })

    vim.cmd("colorscheme solarized-osaka")
  end,
}
