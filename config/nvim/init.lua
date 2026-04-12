require("lazy_config")

-- local lspconfig = require("lspconfig")
-- local configs = require("lspconfig.configs")
-- local util = require("lspconfig.util")

--  configs.tinymist = {
--    default_config = {
--      cmd = { "tinymist" },
--      filetypes = { "typst" },
--      root_dir = util.root_pattern("typst.toml", ".git"),
--      settings = {},
--    },
--  }


-- vim.cmd("LspStart tinymist")

--vim.api.nvim_create_autocmd("FileType", {
--  pattern = "typst",
--  callback = function()
--    -- Delay to let Neovim finish buffer initialization
--    vim.defer_fn(function()
--      -- 0 refers to the current buffer
--      vim.cmd("LspStart tinymist")
--    end, 0)  -- delay in milliseconds, adjust as needed
--  end,
--})

--vim.api.nvim_create_autocmd("FileType", {
--        pattern = "typst",
--        callback = function()
--          local clients = vim.lsp.get_active_clients()
--          for _, client in ipairs(clients) do
--            if client.name == "tinymist" then
--              return -- already attached
--            end
--          end
--
--          lspconfig.tinymist.setup({
--            settings = {
--              formatterMode = "typstyle",
--              exportPdf = "onType",
--              semanticTokens = "disable",
--            },
--          })
--          vim.cmd("LspStart tinymist")
--        end,
--      })

--vim.api.nvim_exec_autocmds("FileType", {})



