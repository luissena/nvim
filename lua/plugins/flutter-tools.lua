return {
  "akinsho/flutter-tools.nvim",
  ft = { "dart" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim",
  },
  opts = {
    flutter_path = nil,
    fvm = false,
    widget_guides = {
      enabled = true,
    },
    closing_tags = {
      highlight = "Comment",
      prefix = "// ",
      enabled = true,
    },
    lsp = {
      color = {
        enabled = true,
        background = false,
        foreground = false,
        virtual_text = true,
        virtual_text_str = "■",
      },
      settings = {
        showTodos = true,
        completeFunctionCalls = true,
        renameFilesWithClasses = "prompt",
        enableSnippets = true,
        updateImportsOnRename = true,
      },
    },
    debugger = {
      enabled = false,
      run_via_dap = false,
    },
  },
}
