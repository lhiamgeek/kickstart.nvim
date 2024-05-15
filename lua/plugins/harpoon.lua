return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  keys = function()
    local keys = {
    -- stylua: ignore start
      { '<leader><leader>', function() require('harpoon'):list():add() end, desc = 'Harpoon File'},
      { '<leader>H', function() local harpoon = require 'harpoon' harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = 'Harpoon Quick Menu'},
    }
    -- stylua: ignore end

    for i = 1, 5 do
      table.insert(keys, {
        '<leader>' .. i,
        function()
          require('harpoon'):list():select(i)
        end,
        desc = 'Harpoon to File ' .. i,
      })
    end
    return keys
  end,
}
