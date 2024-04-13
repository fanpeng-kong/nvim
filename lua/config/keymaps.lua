-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- This file is automatically loaded by lazyvim.config.init
local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<leader>ub", function()
  if vim.o.background == "dark" then
    vim.o.background = "light"
  else
    vim.o.background = "dark"
  end
end, { desc = "Toggle Background" })

map("n", "<leader>uc", function()
  if vim.o.list == true then
    vim.o.list = false
  else
    vim.o.list = true
  end
end, { desc = "toggle list" })

-- ChatGPT
map("n", "<leader>Cc", "<cmd>ChatGPT<CR>", { desc = "ChatGPT" })
map({ "n", "v" }, "<leader>Ce", "<cmd>ChatGPTEditWithInstruction<CR>", { desc = "Edit with instruction" })
map({ "n", "v" }, "<leader>Cg", "<cmd>ChatGPTRun grammar_correction<CR>", { desc = "Grammar Correction" })
map({ "n", "v" }, "<leader>Ct", "<cmd>ChatGPTRun translate<CR>", { desc = "Translate" })
map({ "n", "v" }, "<leader>Ck", "<cmd>ChatGPTRun keywords<CR>", { desc = "Keywords" })
map({ "n", "v" }, "<leader>Cd", "<cmd>ChatGPTRun docstring<CR>", { desc = "Docstring" })
map({ "n", "v" }, "<leader>Ca", "<cmd>ChatGPTRun add_tests<CR>", { desc = "Add Tests" })
map({ "n", "v" }, "<leader>Co", "<cmd>ChatGPTRun optimize_code<CR>", { desc = "Optimize Code" })
map({ "n", "v" }, "<leader>Cs", "<cmd>ChatGPTRun summarize<CR>", { desc = "Summarize" })
map({ "n", "v" }, "<leader>Cf", "<cmd>ChatGPTRun fix_bugs<CR>", { desc = "Fix Bugs" })
map({ "n", "v" }, "<leader>Cx", "<cmd>ChatGPTRun explain_code<CR>", { desc = "Explain Code" })
map({ "n", "v" }, "<leader>Cr", "<cmd>ChatGPTRun roxygen_edit<CR>", { desc = "Roxygen Edit" })
map({ "n", "v" }, "<leader>Cl", "<cmd>ChatGPTRun code_readability_analysis<CR>", { desc = "Code Readability Analysis" })
