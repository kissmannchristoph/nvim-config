--- This module will load a random colorscheme on nvim startup process.
local utils = require("utils")

local M = {}

-- Colorscheme to its directory name mapping, because colorscheme repo name is not necessarily
-- the same as the colorscheme name itself.
M.colorscheme_conf = {
  sonokai = function()
    vim.g.sonokai_enable_italic = 1
    vim.g.sonokai_style = 'andromeda'
    vim.g.sonokai_better_performance = 1
    vim.g.sonokai_transparent_background = 1
    vim.g.sonokai_dim_inactive_windows = 1

    vim.cmd([[colorscheme sonokai]])
  end,
  kanagawa = function()
    vim.cmd("colorscheme kanagawa-wave")
  end,
  nw = function()
    vim.cmd("colorscheme nightwolf")
  end,
  onehalf = function()
    vim.cmd([[colorscheme onehalf]])
  end,
  cs = function()
    vim.cmd([[colorscheme charleston]])
  end,
}

--- Use a random colorscheme from the pre-defined list of colorschemes.
M.rand_colorscheme = function()
  local colorscheme = utils.rand_element(vim.tbl_keys(M.colorscheme_conf))

  -- Load the colorscheme and its settings
  M.colorscheme_conf[colorscheme]()
end

return M
