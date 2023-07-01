local mywm = {}


mywm.BIG_WINDOW_SIZE = 1844.0
-- mywm.BIG_WINDOW_SIZE = 1600.0

function mywm.moveWindowLeft()
  return hs.hotkey.bind({"cmd", "ctrl"}, "W", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()

    f.x = f.x - 70
    win:setFrame(f)
  end)
end


function mywm.tileLeft()
  hs.hotkey.bind({"alt", "ctrl"}, "Left", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
  end)
end


function mywm.tileRight()
  hs.hotkey.bind({"alt", "ctrl"}, "Right", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
  end)
end


local maximizeWindow = function (window)
  local f = window:frame()
  local screen = window:screen()
  local max = screen:frame()
  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  window:setFrame(f)
end


function mywm.maximizeWindow()
  hs.hotkey.bind({"alt", "ctrl"}, "m", function ()
    maximizeWindow(hs.window.focusedWindow())
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


function mywm.moveToOtherScreen()
  hs.hotkey.bind({"alt", "ctrl"}, "o", function()
    local win = hs.window.focusedWindow()
    local screen = win:screen()
    print(screen:name())
    print(hs.screen.primaryScreen():name())
    if screen:name() == hs.screen.primaryScreen():name() then
      moveToSecondaryScreen(win)
    else
      moveToPrimaryScreen(win)
    end
  end)
end


function mywm.tileLeftBig()

  hs.hotkey.bind({"alt", "ctrl"}, "h", function ()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    -- print("frame", f)
    local screen = win:screen()
    local max = screen:frame()
    f.w = mywm.BIG_WINDOW_SIZE
    f.h = max.h
    f.x = max.x
    f.y = max.y
    win:setFrame(f)
  end)

end

function mywm.tileRightBig()
  hs.hotkey.bind({"alt", "ctrl"}, "l", function ()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    f.w = mywm.BIG_WINDOW_SIZE
    f.h = max.h
    f.x = max.x + (max.w - f.w)
    f.y = max.y
    win:setFrame(f)
  end)
end


-- hide all applications
function mywm.hideAllApps()
  local apps = hs.application.runningApplications()
  for _, app in ipairs(apps) do
    app:hide()
  end
end


function mywm.hideAllApplications()
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
    mywm.hideAllApps()
  end)
end

return mywm

