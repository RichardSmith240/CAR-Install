-- In your lazy.nvim configuration (e.g., `lua/plugins/mason.lua`)
return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim', -- For easy LSP integration
    dependencies = { 'williamboman/mason.nvim' },
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { "lua_ls", "ts_ls" }, -- Example: Auto-install these
      })
    end
  },
}

