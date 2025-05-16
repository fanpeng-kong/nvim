local M = {}

M.get_api_key = function(key_name, gpg_file_path)
  local gpg_file = gpg_file_path or vim.fn.expand("$HOME") .. "/secrets.txt.gpg"

  local cmd =
    string.format("gpg --quiet --decrypt %s | grep %q | cut -d '=' -f2 | tr -d '[:space:]'", gpg_file, key_name)

  local handle = io.popen(cmd)
  if not handle then
    return nil
  end

  local result = handle:read("*a")
  handle:close()

  return result or nil
end

M.load_api_key = function(key_name)
  local key_value = M.get_api_key(key_name)
  if key_value then
    vim.env[key_name] = key_value
    return true
  end
  return false
end

return M
