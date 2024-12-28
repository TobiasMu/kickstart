vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

--  See `:help wincmd` for a list of all window commands
--
vim.keymap.set("n", "|", ':vsplit<CR>', { silent = true })
vim.keymap.set("n", "<Bslash>", ':split<CR>', { silent = true })
--
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set("n", "<space>xf", "<cmd>source % <CR>")
vim.keymap.set("n", "<space>xx", ":.lua<CR>", { noremap = true })
vim.keymap.set("v", "<space>x", ":lua<CR>", { noremap = true })

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { noremap = true })
-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`
vim.keymap.set('n', '<leader>mi', ':MoltenInit<CR>', { silent = true })
vim.keymap.set('n', '<leader>me', ':MoltenEvaluateOperator<CR>', { silent = true })
vim.keymap.set('n', '<leader>mr', ':MoltenReevaluateCell<CR>', { silent = true })
vim.keymap.set('n', '<leader>md', ':MoltenDelete<CR>', { silent = true })
vim.keymap.set('n', '<leader>mh', ':MoltenHideOutput<CR>', { silent = true })
vim.keymap.set("v", "<leader>me", ":<C-u>MoltenEvaluateVisual<CR>gv",
  { desc = "execute visual selection", silent = true })
