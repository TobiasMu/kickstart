local state = {
  floating = {
    buf = -1,
    win = -1,
  }
}


function CreateFloatingWindow(opts)
  opts = opts or {}
  -- Get editor dimensions
  local width = vim.api.nvim_get_option("columns")
  local height = vim.api.nvim_get_option("lines")

  -- Set default size to 80% if not specified
  local win_width = opts.width or math.floor(width * 0.8)
  local win_height = opts.height or math.floor(height * 0.8)

  -- Calculate centered position
  local row = math.floor((height - win_height) / 2)
  local col = math.floor((width - win_width) / 2)

  -- Create buffer for the floating window
  local buf = nil
  if vim.api.nvim_buf_is_valid(opts.buf) then
    buf = opts.buf
  else
    buf = vim.api.nvim_create_buf(false, true)
  end
  -- Set up floating window options
  local win_opts = {
    relative = 'editor',
    width = win_width,
    height = win_height,
    row = row,
    col = col,
    style = 'minimal',
    border = 'rounded'
  }

  -- Create and return the window
  local win = vim.api.nvim_open_win(buf, true, win_opts)
  return { buf = buf, win = win }
end

local toggle_terminal = function()
  if not vim.api.nvim_win_is_valid(state.floating.win) then
    state.floating = CreateFloatingWindow { buf = state.floating.buf }
    if vim.bo[state.floating.buf].buftype ~= "terminal" then
      vim.cmd.terminal()
    end
  else
    vim.api.nvim_win_hide(state.floating.win)
  end
end
vim.api.nvim_create_user_command("Floaterminal", toggle_terminal, {})
vim.keymap.set({ "n", "t" }, "<space>tt", toggle_terminal)
