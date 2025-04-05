require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "bash",
    "cpp",
    "css",
    "dart",
    "go",
    "html",
    "javascript",
    "json",
    "lua",
    "python",
    "rust",
    "scss",
    "toml",
    "typescript",
    "vim",
    "vue",
    "yaml",
  },
  ignore_install = {}, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "help" }, -- list of language that will be disabled
  },
}
