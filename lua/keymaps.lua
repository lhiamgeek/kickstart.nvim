vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', ';', ':')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', 'require("smart-splits").move_cursor_left)', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', 'require("smart-splits").move_cursor_down)', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', 'require("smart-splits").move_cursor_right)', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', 'require("smart-splits").move_cursor_up)', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<A-h>', 'require("smart-splits").resize_left', { desc = 'Resize left' })
vim.keymap.set('n', '<A-l>', 'require("smart-splits").resize_right', { desc = 'Resize right' })
vim.keymap.set('n', '<A-j>', 'require("smart-splits").resize_down', { desc = 'Resize down' })
vim.keymap.set('n', '<A-k>', 'require("smart-splits").resize_up', { desc = 'Resize up' })
