-- lua lsp setup
vim.lsp.config["lua_ls"] = {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = { { ".luarc.json", ".luarc.jsonc" }, ".git" },
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
    },
  },
}
vim.lsp.enable("lua_ls")

-- markdown lsp setup
vim.lsp.config["marksman"] = {
  cmd = { "marksman" },
  filetypes = { "markdown" },
  root_markers = { ".marksman.toml", ".git" },
}
vim.lsp.enable("marksman")

-- eslint lsp setup
vim.lsp.config["eslint"] = {
  cmd = { "vscode-eslint-language-server", "--stdio" },
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "vue",
    "svelte",
    "astro",
    "htmlangular",
  },
  root_markers = {
    {
      ".eslintrc",
      ".eslintrc.js",
      ".eslintrc.cjs",
      ".eslintrc.yaml",
      ".eslintrc.yml",
      ".eslintrc.json",
      "eslint.config.js",
      "eslint.config.mjs",
      "eslint.config.cjs",
      "eslint.config.ts",
      "eslint.config.mts",
      "eslint.config.cts",
    },
    ".git",
  },
  settings = {
    validate = "on",
    experimental = {
      useFlatConfig = false,
    },
    codeActionOnSave = {
      enable = true,
      mode = "all",
    },
    format = false,
    quiet = false,
    rulesCustomizations = {},
    run = "onType",
    problems = {
      shortenToSingleLine = false,
    },
    nodePath = "",
  },
}
vim.lsp.enable("eslint")
