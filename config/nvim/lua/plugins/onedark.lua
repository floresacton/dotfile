return {
  "navarasu/onedark.nvim",
  lazy = false,
  version = "*",
  config = function()
    require("onedark").setup {
        style = 'deep',
        transparent = true,
    }
    vim.cmd.colorscheme('onedark')
  end,
}
