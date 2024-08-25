return {
  {
    "neanias/everforest-nvim",
    priority = 1000,
    version = false,
    lazy = false,
    config = function()

      require("everforest").setup({
        background = "hard",
        ui_contrast = "dark",
        italics = true,
        disable_italic_comments = false,
        on_highlights = function(hl, _)
          hl["@string.special.symbol.ruby"] = { link = "@field" }
        end,
      })
      vim.cmd([[colorscheme everforest]])
    end,
  },
}
