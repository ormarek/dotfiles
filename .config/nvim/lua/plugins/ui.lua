local headers = {
  {
    " ░▒▓██████▓▒░  ░▒▓███████▓▒░  ░▒▓██████████████▓▒░   ░▒▓██████▓▒░  ░▒▓███████▓▒░  ░▒▓████████▓▒░ ░▒▓█▓▒░░▒▓█▓▒░",
    "░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░        ░▒▓█▓▒░░▒▓█▓▒░",
    "░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░        ░▒▓█▓▒░░▒▓█▓▒░",
    "░▒▓█▓▒░░▒▓█▓▒░ ░▒▓███████▓▒░  ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ ░▒▓████████▓▒░ ░▒▓███████▓▒░  ░▒▓██████▓▒░   ░▒▓███████▓▒░ ",
    "░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░        ░▒▓█▓▒░░▒▓█▓▒░",
    "░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░        ░▒▓█▓▒░░▒▓█▓▒░",
    " ░▒▓██████▓▒░  ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓████████▓▒░ ░▒▓█▓▒░░▒▓█▓▒░",
  },
  {
    "                                                                 █████     ",
    "                                                                ░░███      ",
    "  ██████  ████████  █████████████    ██████   ████████   ██████  ░███ █████",
    " ███░░███░░███░░███░░███░░███░░███  ░░░░░███ ░░███░░███ ███░░███ ░███░░███ ",
    "░███ ░███ ░███ ░░░  ░███ ░███ ░███   ███████  ░███ ░░░ ░███████  ░██████░  ",
    "░███ ░███ ░███      ░███ ░███ ░███  ███░░███  ░███     ░███░░░   ░███░░███ ",
    "░░██████  █████     █████░███ █████░░████████ █████    ░░██████  ████ █████",
    " ░░░░░░  ░░░░░     ░░░░░ ░░░ ░░░░░  ░░░░░░░░ ░░░░░      ░░░░░░  ░░░░ ░░░░░ ",
  },
}

local function get_random_header()
  math.randomseed(os.time()) -- Seed the random number generator
  return headers[math.random(#headers)]
end

return {
  -- Dashboard configuration
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      local logo = get_random_header()
      logo = vim.list_extend(
        { "", "", "", "", "", "", "", "" }, -- 8 empty lines
        vim.list_extend(
          logo,
          { "", "" } -- 2 empty lines
        )
      )
      opts.config.header = logo
      return opts
    end,
  },
  -- Colorscheme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "auto", -- "auto", "macchiato", "latte", "frappe", "mocha"
        background = {
          light = "latte",
          dark = "mocha",
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
