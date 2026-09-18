return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end 
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.diagnostic.config({
        virtual_text = true,  -- Shows error text right next to the code line
        signs = true,         -- Puts error/warning icons in the line number gutter
        underline = true,     -- Underlines code with errors
        update_in_insert = false,
        severity_sort = true,
      })

      vim.lsp.enable("lua_ls")
      vim.lsp.enable("ts_ls")

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
