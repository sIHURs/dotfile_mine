-- ~/.config/nvim/lua/plugins/theme-solarized-osaka.lua
--

return {
  "craftzdog/solarized-osaka.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd.colorscheme("solarized-osaka")
  end,
}
