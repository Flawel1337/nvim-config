-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ============================================================
-- WINDOWS
-- ============================================================

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- ============================================================
-- TERMINAL
-- ============================================================

vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Go to left window" })
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Go to lower window" })
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Go to upper window" })
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Go to right window" })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", {
  desc = "Exit terminal mode",
})

-- ============================================================
-- GERMAN KEYBOARD
-- ============================================================

-- [ / ]
--
-- This is intentionally recursive so existing mappings such as
-- [d, ]d, [c, ]c, [[, ]] etc. continue to work.
vim.keymap.set({ "n", "x", "o" }, "ö", "[", {
  remap = true,
  desc = "[",
})

vim.keymap.set({ "n", "x", "o" }, "ä", "]", {
  remap = true,
  desc = "]",
})

-- { / }
--
-- Paragraph / block movement.
vim.keymap.set({ "n", "x", "o" }, "Ö", "{", {
  desc = "Previous paragraph",
})

vim.keymap.set({ "n", "x", "o" }, "Ä", "}", {
  desc = "Next paragraph",
})

-- `
--
-- Backtick is particularly unpleasant on a German keyboard and
-- is a dead key on many layouts.
vim.keymap.set({ "n", "x", "o" }, "ß", "`", {
  remap = true,
  desc = "Exact mark jump",
})

-- / / ?
--
-- Optional, but much more comfortable than Shift+7 and Shift+ß.
vim.keymap.set("n", "ü", "/", {
  desc = "Search forward",
})

vim.keymap.set("n", "Ü", "?", {
  desc = "Search backward",
})
