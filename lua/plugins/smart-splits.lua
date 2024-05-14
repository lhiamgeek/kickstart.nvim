return {
  'mrjones2014/smart-splits.nvim',
  lazy = false,
  keys = {
    -- stylua: ignore start
    { '<C-h>', function() require('smart-splits').move_cursor_left() end, { desc = 'Move focus to the left window' } },
    { '<C-l>', function() require('smart-splits').move_cursor_right() end, { desc = 'Move focus to the right window' } },
    { '<C-j>', function() require('smart-splits').move_cursor_down() end, { desc = 'Move focus to the lower window' } },
    { '<C-k>', function() require('smart-splits').move_cursor_up() end, { desc = 'Move focus to the upper window' } },
    { '<A-h>', function() require('smart-splits').resize_left() end, { desc = 'Resize left' } },
    { '<A-l>', function() require('smart-splits').resize_right() end, { desc = 'Resize right' } },
    { '<A-j>', function() require('smart-splits').resize_down() end, { desc = 'Resize down' } },
    { '<A-k>', function() require('smart-splits').resize_up() end, { desc = 'Resize up' } },
    -- stylua: ignore end
  },
}
