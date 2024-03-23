local M = {}

M.BIG_WINDOW_SIZE = 1844.0

function M.moveWindowLeft()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 70
  win:setFrame(f)
end

function M.bindMoveWindowLeft()
  return hs.hotkey.bind({ "cmd", "ctrl" }, "W", M.moveWindowLeft)
end

function M.tileLeft()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end

function M.bindTileLeft()
  hs.hotkey.bind({ "alt", "ctrl" }, "Left", M.tileLeft)
end

function M.tileRight()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end

function M.bindTileRight()
  hs.hotkey.bind({ "alt", "ctrl" }, "Right", M.tileRight)
end

function M.maximizeWindow(window)
  local f = window:frame()
  local screen = window:screen()
  local max = screen:frame()
  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  window:setFrame(f)
end

function M.bindMaximizeWindow()
  hs.hotkey.bind({ "alt", "ctrl" }, "m", function()
    M.maximizeWindow(hs.window.focusedWindow())
  end)
end

local moveToSecondaryScreen = function(window)
  -- move all the way to the right
  -- print("moving to secondary screen")
  local f = window:frame()
  local screen = window:screen()
  local next_screen = screen:next()
  local screen_frame = next_screen:frame()
  f.x = screen_frame.x + (screen_frame.w - f.w)
  window:setFrame(f)
end


local moveToPrimaryScreen = function(window)
  -- move all the way to the left
  -- print("moving to primary screen")
  local f = window:frame()
  local screen = window:screen()
  local next_screen = screen:next()
  local screen_frame = next_screen:frame()
  -- printTable(screen_frame)
  -- printTable(f)
  f.x = screen_frame.x
  window:setFrame(f)
end

function M.moveToOtherScreen()
  local win = hs.window.focusedWindow()
  local screen = win:screen()
  print(screen:name())
  print(hs.screen.primaryScreen():name())
  if screen:name() == hs.screen.primaryScreen():name() then
    moveToSecondaryScreen(win)
  else
    moveToPrimaryScreen(win)
  end
end

function M.bindMoveToOtherScreen()
  hs.hotkey.bind({ "alt", "ctrl" }, "o", M.moveToOtherScreen)
end

function M.tileLeftBig()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  -- print("frame", f)
  local screen = win:screen()
  local max = screen:frame()
  f.w = M.BIG_WINDOW_SIZE
  f.h = max.h
  f.x = max.x
  f.y = max.y
  win:setFrame(f)
end

function M.bindTileLeftBig()
  hs.hotkey.bind({ "alt", "ctrl" }, "h", M.tileLeftBig)
end

function M.tileRightBig()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.w = M.BIG_WINDOW_SIZE
  f.h = max.h
  f.x = max.x + (max.w - f.w)
  f.y = max.y
  win:setFrame(f)
end

function M.bindTileRightBig()
  hs.hotkey.bind({ "alt", "ctrl" }, "l", M.tileRightBig)
end

-- hide all applications
function M.hideAllApps()
  local apps = hs.application.runningApplications()
  for _, app in ipairs(apps) do
    app:hide()
  end
end

function M.bindHideAllApps()
  hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "H", function()
    M.hideAllApps()
  end)
end

-- Function to center a window
function M.centerWindow()
  local win = hs.window.focusedWindow()
  if win then
    local frame = win:frame()
    local screenFrame = win:screen():frame()
    frame.x = (screenFrame.w - frame.w) / 2
    frame.y = (screenFrame.h - frame.h) / 2
    win:setFrame(frame)
  end
end

function M.bindCenterWindow()
  hs.hotkey.bind({ "alt", "ctrl" }, "C", M.centerWindow)
end

return M
