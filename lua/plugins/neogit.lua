return {
  'NeogitOrg/neogit',
  branch = 'master',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed, not both.
    'nvim-telescope/telescope.nvim', -- optional
    'ibhagwan/fzf-lua', -- optional
  },
  config = true,
  keys = {
    { '<leader>hg', '<cmd>Neogit<cr>', desc = 'git [g]git' },
  },
}
