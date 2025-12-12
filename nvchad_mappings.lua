require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- New tab
map("n", "<leader>tn", "<cmd>enew<CR>", { desc = "New buffer" })
-- Close tab
map("n", "<leader>tc", "<cmd>bd<CR>", { desc = "Close buffer" })

-- Move to the next buffer (right)
map("n", "gt", "<cmd>bnext<CR>", { desc = "Next buffer" })
-- Move to the previous buffer (left)
map("n", "gT", "<cmd>bprevious<CR>", { desc = "Previous buffer" })

-- Unset floating terminal with Alt + i
vim.keymap.del({ "n", "t" }, "<A-i>")

-- Alt + i: Open floating terminal with Copilot CLI
map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "copilotTerm", cmd = "copilot" }
end, { desc = "terminal toggle floating copilot" })

-- Remap floating terminal (Alt + t)
-- NOTE: horizontal terminal is Alt + h
map({ "n", "t" }, "<A-t>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })
