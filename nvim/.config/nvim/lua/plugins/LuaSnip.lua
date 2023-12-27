return {
  "L3MON4D3/LuaSnip",
  init = function()
    require("luasnip").filetype_extend("javascript", { "javascriptreact", "html" })
  end,
  keys = function()
    return {}
  end,
}
