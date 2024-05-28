return {
  "echasnovski/mini.surround",
  config = function()
    require("mini.surround").setup {
      mappings = {
        add = "ma",
        delete = "md",
        replace = "mr",
        find = "mf",
        highlight = "mh",
      },
    }
  end,
}
