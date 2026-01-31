require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "ts_ls",
  "dockerls",
  "docker_compose_language_service",
  "marksman",
  "lua_ls",
}
vim.lsp.enable(servers)

-- YAML with schema support
vim.lsp.config("yamlls", {
  settings = {
    yaml = {
      schemaStore = { enable = true },
      schemas = {
        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
      },
    },
  },
})
vim.lsp.enable("yamlls")

-- read :h vim.lsp.config for changing options of lsp servers
