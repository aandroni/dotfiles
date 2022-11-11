local mason_ok, mason = pcall(require, "mason")
if not mason_ok then
    return
end

local mason_lspconfig_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_ok then
  return
end

local mason_null_ls_ok, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_ok then
  return
end

mason.setup()

mason_lspconfig.setup({
  ensure_installed = {
    "sumneko_lua",
    "pyright",
    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "clojure_lsp",
    "gopls",
  }
})

mason_null_ls.setup({
  ensure_installed = {
    "prettier",
    "stylua",
  }
})
