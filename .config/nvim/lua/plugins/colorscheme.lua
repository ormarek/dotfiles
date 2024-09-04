return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "auto", -- "auto", "macchiato", "latte", "frappe", "mocha"
        background = {
          light = "latte",
          dark = "macchiato",
        },
        transparent_background = true,
        show_end_of_buffer = true,
        term_colors = true,
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          functions = { "bold" },
          keywords = { "italic" },
          literals = { "bold" },
          variables = {},
          numbers = {},
          booleans = { "bold" },
          properties = {},
          types = {},
        },
      })
      -- vim.cmd.colorscheme("catppuccin")
    end,
  },
}
