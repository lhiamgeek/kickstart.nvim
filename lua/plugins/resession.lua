return {
  'stevearc/resession.nvim',
  dependencies = {
    {
      'tiagovla/scope.nvim',
      lazy = false,
      config = true,
    },
  },
  keys = {
    {
      '<leader>Sl',
      function()
        require('resession').load 'Last Session'
      end,
      desc = 'Load last session',
    },
    {
      '<leader>Ss',
      function()
        require('resession').save()
      end,
      desc = 'Save this session',
    },
    {
      '<leader>St',
      function()
        require('resession').save_tab()
      end,
      desc = "Save this tab's session",
    },
    {
      '<leader>Sd',
      function()
        require('resession').delete()
      end,
      desc = 'Delete a session',
    },
    {
      '<leader>Sf',
      function()
        require('resession').load()
      end,
      desc = 'Load a session',
    },
    {
      '<leader>S.',
      function()
        require('resession').load(vim.fn.getcwd(), { dir = 'dirsession' })
      end,
      desc = 'Load current directory session',
    },
  },
  opts = {
    autosave = {
      enabled = true,
      interval = 60,
      notify = false,
    },
    -- override default filter
    buf_filter = function(bufnr)
      local buftype = vim.bo[bufnr].buftype
      if buftype == 'help' then
        return true
      end
      if buftype ~= '' and buftype ~= 'acwrite' then
        return false
      end
      if vim.api.nvim_buf_get_name(bufnr) == '' then
        return false
      end

      -- this is required, since the default filter skips nobuflisted buffers
      return true
    end,
    extensions = { scope = {} }, -- add scope.nvim extension
    tab_buf_filter = function(tabpage, bufnr)
      local bufname = vim.api.nvim_buf_get_name(bufnr)
      if vim.bo[bufnr].buftype == '' and bufname ~= '' then
        if vim.fn.filereadable(bufname) == 0 then
          return false
        end
      end
      local dir = vim.fn.getcwd(-1, vim.api.nvim_tabpage_get_number(tabpage))
      if dir == nil then
        return false
      end
      -- ensure dir has trailing /
      dir = dir:sub(-1) ~= '/' and dir .. '/' or dir
      return vim.startswith(vim.api.nvim_buf_get_name(bufnr), dir)
    end,
  },
}
