return {
  "L3MON4D3/LuaSnip",
  dependencies = { "rafamadriz/friendly-snippets" },
  config = function()
    local luasnip = require("luasnip")

    require("luasnip.loaders.from_vscode").lazy_load()
    require("luasnip.loaders.from_vscode").load({
      paths = {
        vim.fs.joinpath(vim.fn.stdpath("config"), "snippets"),
      }
    })
    luasnip.filetype_extend("htmldjango", { "html" })
    luasnip.filetype_extend("python", { "django" })
  end,
}
