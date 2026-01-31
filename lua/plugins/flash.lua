return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    modes = {
      char = {
        jump_labels = true,
      },
    },
    highlight = {
      backdrop = true,
      groups = {
        match = "FlashMatch",
        current = "FlashCurrent",
        backdrop = "FlashBackdrop",
        label = "FlashLabel",
      },
    },
  },
  config = function(_, opts)
    require("flash").setup(opts)
    vim.api.nvim_set_hl(0, "FlashLabel", { fg = "#000000", bg = "#ff007c", bold = true })
    vim.api.nvim_set_hl(0, "FlashMatch", { fg = "#89ddff", underline = true })
    vim.api.nvim_set_hl(0, "FlashCurrent", { fg = "#ffffff", bg = "#ff966c" })
    vim.api.nvim_set_hl(0, "FlashBackdrop", { fg = "#545c7e" })
  end,
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}
