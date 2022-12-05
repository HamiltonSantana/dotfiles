local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require("hamilton.lsp.mason")
require("hamilton.lsp.handlers").setup()
require("hamilton.lsp.null-ls")
