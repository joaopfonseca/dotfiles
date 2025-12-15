-- Load NVChad default LSP behavior (keymaps, capabilities, etc.)
require("nvchad.configs.lspconfig").defaults()

-- Define LSP server configurations
vim.lsp.config.pyright = {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic", -- "strict" if you want pain 😄
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  },
}

vim.lsp.config.ruff_lsp = {
  -- Disable formatting so Conform owns it
  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = false
  end,
}

-- Enable servers
vim.lsp.enable({
  "html",
  "cssls",
  "pyright",
  "ruff",
})
