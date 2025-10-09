-- LSP

vim.lsp.config["pyright"] = {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",   -- "off", "basic", or "strict"
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "openFilesOnly", -- or "workspace"
      },
    },
  },
}

vim.lsp.enable("pyright")
