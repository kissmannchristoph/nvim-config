require("flutter-tools").setup {
  flutter_path = "/Users/iso/Development/flutter/bin/flutter",
  flutter_lookup_cmd = nil,
  fvm = false,
  widget_guides = { enabled = true },
  lsp = {
    settings = {
      showtodos = true,
      completefunctioncalls = true,
      analysisexcludedfolders = {
        vim.fn.expand("$Home/.pub-cache"),
      },
      renamefileswithclasses = "prompt",
      updateimportsonrename = true,
      enablesnippets = false,
    },
  },
}
