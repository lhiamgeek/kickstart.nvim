return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  init = function()
    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    vim.cmd.colorscheme 'catppuccin'
  end,
  config = function()
    require('catppuccin').setup {
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { 'italic' }, -- Change the style of comments
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = { 'bold' },
        types = { 'bold' },
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      integrations = {
        notify = true,
        mini = {
          enabled = true,
          indentscope_color = '',
        },
        lsp_saga = true,
        mason = true,
        neotree = true,
        telescope = {
          style = 'nvchad',
        },
        harpoon = true,
      },
      custom_highlights = function(colors)
        return {
          CursorLineNr = { fg = colors.mauve, style = { 'bold' } },
          FloatBorder = { bg = colors.base, fg = colors.surface0 },
          GitSignsChange = { fg = colors.peach },
          LineNr = { fg = colors.surface1 },
          LspInfoBorder = { link = 'FloatBorder' },
          NoiceCmdlinePopup = { bg = colors.mantle },
          NoiceCmdlinePopupBorder = { bg = colors.mantle, fg = colors.mantle },
          NoiceCmdlinePopupBorderSearch = { link = 'NoiceCmdlinePopupBorder' },
          NoiceCmdlinePopupTitle = { bg = colors.mantle, fg = colors.mantle },
          NormalFloat = { bg = colors.base },
          VertSplit = { bg = colors.base, fg = colors.surface0 },
          YankHighlight = { bg = colors.crust },
          CodeBlock = { bg = colors.base },
        }
      end,
    }
  end,
}
