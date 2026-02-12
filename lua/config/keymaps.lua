-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Add the resolution for 'undefined global `vim`'

-- Remove the mappings for my own custom mappings.
vim.keymap.del("n", "<S-l>")
vim.keymap.del("n", "<S-h>")

vim.keymap.set({ "n", "v" }, "<S-l>", "$", { desc = "Move cursor to last of line" })
vim.keymap.set({ "n", "v" }, "<S-h>", "^", { desc = "Move cursor to start of line" })

-- Remap Ctrl+N/P for next and previous buffer movement
vim.keymap.set("n", "<C-n>", "<cmd>bnext<cr>", { desc = "Move to the next open buffer" })
vim.keymap.set("n", "<C-p>", "<cmd>bprevious<cr>", { desc = "Move to the previous open buffer" })

-- Remove the keybinding for 'S' in order to get the default working in normal mode
vim.keymap.del("n", "<S-s>")

-- Keymap for floating terminal
vim.keymap.set(
  { "n", "t" },
  "<F12>",
  "<cmd>Lspsaga term_toggle<cr>",
  { desc = "Open the floating persistent terminal" }
)

-- Command setting for moving to the specified line number
vim.keymap.set("n", "<leader>g", ":", { desc = "Go to line number" })

-- Remap the code movement keys in normal mode
vim.keymap.set("n", "<S-k>", ":<C-u>m-2<CR>==", { desc = "Move current line up one line" })
vim.keymap.set("n", "<S-j>", ":<C-u>m+<CR>==", { desc = "Move current line down one line" }) -- moving lines in visual mode

-- Remap the code movement keys in visual mode
vim.keymap.set("v", "<S-k>", ":m-2<CR>gv=gv", { desc = "Move selected line(s) up" })
vim.keymap.set("v", "<S-j>", ":m'>+<CR>gv=gv", { desc = "Move selected line(s) down" }) -- moving lines in visual mode

-- Lspsaga outline
vim.keymap.set("n", "<F8>", "<cmd>Lspsaga outline<cr>", { desc = "Show Outline" })

-- Lspsaga hover doc
vim.keymap.set("n", "<S-m>", "<cmd>Lspsaga hover_doc<cr>", { desc = "Show Documentation" })

-- Undo tree
vim.keymap.set("n", "<F2>", "<cmd>Atone toggle<cr>", { desc = "Undo Tree" })
