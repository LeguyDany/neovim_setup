-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",
        "python-lsp-server",
        "eslint-lsp",

        -- install formatters
        "stylua",
        "prettierd", -- JS / TS
        "black", -- python

        -- install debuggers
        "debugpy",

        -- install any other package
        "tree-sitter-cli",
      },
    },
  },
  { "williamboman/mason.nvim" },
  {
    "mfussenegger/nvim-dap",
    lazy = true,
    dependencies = {
      "rcarriga/nvim-dap-ui",
    },
    keys = {
      { "<leader>d", function() require("dap").toggle_breakpoint() end },
      { "<leader>c", function() require("dap").continue() end },
    },
    config = function() require("dapui").setup() end,
  },
  { "jay-babu/mason-nvim-dap.nvim" },
}
