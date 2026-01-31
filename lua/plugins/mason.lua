return {
  "mason-org/mason.nvim",
  opts = {
    registries = {
      "github:mason-org/mason-registry",
      "github:Crashdummyy/mason-registry",
    },
    ensure_installed = {
      -- LSP
      "lua-language-server",
      "typescript-language-server",
      "html-lsp",
      "css-lsp",
      "dockerfile-language-server",
      "docker-compose-language-service",
      "marksman",
      "yaml-language-server",
      "roslyn",
      -- Formatters
      "prettier",
      "prettierd",
      "csharpier",
      "stylua",
    },
  },
}
