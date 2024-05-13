return {
  'tiagovla/scope.nvim',
  lazy = false,
  config = true,
  opts = function()
    require('scope').setup {}
    require('telescope').load_extension 'scope'
  end,
}
