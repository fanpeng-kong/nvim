if not vim.g.vscode then
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")
else
  -- for NeoVim vscode
  vim.cmd("set clipboard+=unnamedplus")
end
