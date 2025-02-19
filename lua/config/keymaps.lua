-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("n", "<leader>p", [[:set paste!<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>W", [[:set wrap! linebreak!<CR>]], { noremap = true, silent = true })

local map = vim.keymap.set
-- Map <leader>w to save
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
map("i", "<leader>w", "<Esc><cmd>w<CR>i", { desc = "Save file" }) -- Keeps you in insert mode
