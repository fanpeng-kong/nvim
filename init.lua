local utils = require("utils")

if not vim.g.vscode then
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")
else
  -- for NeoVim vscode
  vim.cmd("set clipboard+=unnamedplus")
end

utils.load_api_key("OPENAI_API_KEY")
utils.load_api_key("ANTHROPIC_API_KEY")
