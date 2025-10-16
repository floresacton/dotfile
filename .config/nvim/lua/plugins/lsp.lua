return {
  "neovim/nvim-lspconfig",
  lazy = false,
  config = function()
    local lspconfig = require("lspconfig")

    lspconfig.tinymist.setup({
      cmd = { "tinymist" },
      filetypes = { "typst" },
      root_dir = lspconfig.util.root_pattern("typst.toml", ".git"),

      settings = {
        formatterMode = "typstyle",
        exportPdf = "onType",
        semanticTokens = "disable",
      },
    })
  end,
}
