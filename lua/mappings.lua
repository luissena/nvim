require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- LSP
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })

-- Terminal toggles (personalizados)
map({ "n", "t" }, "<leader>h", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "Terminal Toggle Horizontal" })

map({ "n", "t" }, "<leader>v", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
end, { desc = "Terminal Toggle Vertical" })

map({ "n", "t" }, "<leader>i", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "Terminal Toggle Flutuante" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
