return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },
  version = "*",
  opts = {
    keymap = {
      preset = "default",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
    },
    completion = {
      list = { selection = { preselect = false } },
      menu = {
        auto_show = true,
        border = "rounded",
        max_height = 10,
      },
      documentation = {
        auto_show = true,
        window = { border = "rounded" },
      },
    },
    fuzzy = {
      sorts = { "score", "sort_text", "label" },
    },
    sources = {
      default = { "lsp", "path", "buffer" },
    },
  },
}
