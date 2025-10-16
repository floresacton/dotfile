return {
  "stevearc/conform.nvim",
  opts = {},
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        -- you can run multiple or have fallbacks
        lua = { "stylua" },
        rust = { "rustfmt" },
        typst = { "typstyle" },
        python = { "ruff_format" },
      },
      formatters = {
        stylua = {
          prepend_args = { "--indent-width", "2", "--indent-type", "Spaces" },
        },
      },
      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
      },
    })
  end,
}
