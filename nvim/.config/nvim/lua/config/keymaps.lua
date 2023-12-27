-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>w", vim.cmd.w)
keymap.set("n", "<leader>q", vim.cmd.q)
keymap.set("i", "jk", "<ESC>")

-- Keep buffer when pasting
vim.keymap.set("x", "<leader>p", [["_dP]])

-- New tab
-- keymap.set("n", "te", ":tabedit<Return>", opts)
keymap.set("n", "<tab>", ":bn<Return>", opts)
keymap.set("n", "<s-tab>", ":bp<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Sessionizer and windowizer
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
keymap.set("n", "<C-d>", "<cmd>silent !tmux neww tmux-windowizer<CR>")

-- Move content
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Diagnostics
-- TODO: Diagnostics for what?
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
