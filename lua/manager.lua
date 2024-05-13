-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  { import = 'plugins' },
}, {
  install = { colorscheme = { 'catppuccin' } },
  ui = {
    backdrop = 100,
    size = { width = 0.8, height = 0.8 },
    wrap = true,
    border = 'rounded',
    icons = {
      cmd = '🌠',
      config = '🔧',
      event = '🌈',
      ft = '🔖',
      init = '🔧',
      import = '⚓',
      keys = '⌨ ',
      lazy = '🌜',
      loaded = '🌕',
      not_loaded = '🌑',
      plugin = '📦',
      runtime = '⛺',
      source = '📰',
      start = '🛫',
      task = '✅',
      list = {
        '',
        '',
        '',
        '‒',
      },
    },
  },
  performance = {
    rtp = {
      -- disable some rtp plugins, add more to your liking
      disabled_plugins = {
        'gzip',
        'netrwPlugin',
        'tarPlugin',
        'tohtml',
        'zipPlugin',
      },
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
