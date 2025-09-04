return {
    'neovim/nvim-lspconfig', -- Configurations for Nvim LSP
    "nvim-treesitter/nvim-treesitter",
  -- Formatter
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        go = { "goimports", "gofmt" }, -- ou "golines" se quiser formatar com limite de coluna
      },
    },
  },

  -- Linter
  {
    "mfussenegger/nvim-lint",
    config = function()
      local lint = require("lint")
      lint.linters_by_ft = {
        go = { "golangcilint" },
      }

      -- Executa lint ao salvar
      vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        callback = function()
          require("lint").try_lint()
        end,
      })
    end,
  },
}
