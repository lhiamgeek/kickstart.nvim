-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- resize splits if window got resized
vim.api.nvim_create_autocmd({ 'VimResized' }, {
  group = vim.api.nvim_create_augroup('resize_splits', { clear = true }),
  callback = function()
    local current_tab = vim.fn.tabpagenr()
    vim.cmd 'tabdo wincmd ='
    vim.cmd('tabnext ' .. current_tab)
  end,
})

vim.api.nvim_create_autocmd('RecordingEnter', {
  group = vim.api.nvim_create_augroup('macro enter notify', { clear = true }),
  callback = function()
    vim.notify('recording macro', vim.log.levels.OFF, {})
  end,
})

vim.api.nvim_create_autocmd('RecordingLeave', {
  group = vim.api.nvim_create_augroup('macro leave notify', { clear = true }),
  callback = function()
    vim.notify('recording macro finished', vim.log.levels.OFF, {})
  end,
})
