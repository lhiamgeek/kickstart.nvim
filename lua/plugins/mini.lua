return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [']quote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()

    -- Simple and easy statusline.
    --  You could remove this setup call if you don't like it,
    --  and try some other statusline plugin
    local statusline = require 'mini.statusline'
    -- set use_icons to true if you have a Nerd Font
    statusline.setup { use_icons = vim.g.have_nerd_font, set_vim_settings = false }

    -- You can configure sections in the statusline by overriding their
    -- default behavior. For example, here we set the section for
    -- cursor location to LINE:COLUMN
    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end

    -- theme everforest
    require('mini.base16').setup {
      palette = {
        base00 = '#2b3339',
        base01 = '#323c41',
        base02 = '#503946',
        base03 = '#868d80',
        base04 = '#d3c6aa',
        base05 = '#d3c6aa',
        base06 = '#e9e8d2',
        base07 = '#fff9e8',
        base08 = '#7fbbb3',
        base09 = '#d699b6',
        base0A = '#83c092',
        base0B = '#dbbc7f',
        base0C = '#e69875',
        base0D = '#a7c080',
        base0E = '#e67e80',
        base0F = '#d699b6',
      },
    }

    -- ... and there is more!
    --  Check out: https://github.com/echasnovski/mini.nvim
  end,
}
