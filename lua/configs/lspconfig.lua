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
        -- GitHub
        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
        -- Azure DevOps
        ["https://raw.githubusercontent.com/microsoft/azure-pipelines-vscode/master/service-schema.json"] = {
          "azure-pipelines.yml",
          "azure-pipelines.yaml",
          "/.azure-pipelines/**/*.yml",
          "/.azure-pipelines/**/*.yaml",
        },
        -- Grafana Stack
        ["https://json.schemastore.org/loki.json"] = { "loki.yml", "loki.yaml", "**/loki/*.yml", "**/loki/*.yaml" },
        ["https://json.schemastore.org/prometheus.rules.json"] = {
          "prometheus.rules.yml",
          "prometheus.rules.yaml",
          "**/rules/*.yml",
          "**/rules/*.yaml",
          "alerts.yml",
          "alerts.yaml",
        },
      },
    },
  },
})
vim.lsp.enable("yamlls")

-- read :h vim.lsp.config for changing options of lsp servers
