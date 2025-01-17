local myInspect = function(itemName, item)
  local inspect = hs.inspect(item)
  print(itemName .. ":", inspect)
end

hs.window.animationDuration = 0

hs.console.darkMode(true)
hs.console.outputBackgroundColor{ white = 0 }
hs.console.consoleCommandColor{ white = 1 }

my_wm = require("mywm")
my_wm.bindMoveWindowLeft()
my_wm.bindTileLeft()
my_wm.bindTileRight()
my_wm.bindMaximizeWindow()
my_wm.bindMoveToOtherScreen()
my_wm.bindTileLeftBig()
my_wm.bindTileRightBig()
my_wm.bindHideAllApps()
my_wm.bindCenterWindow()

local function displayFinder()
  -- TODO: switch to finder
  -- TODO: hide all other apps
  -- TODO: add up to 2 windows next to each other
end

mydock = require("dock")
mydock.addItem(mydock.newItemWithKeybinding("k", "Emacs"))
mydock.addItem(mydock.newItemWithKeybinding("l", "Visual Studio Code", true))
mydock.addItem(mydock.newItemWithKeybinding(";", "Ghostty", true))
mydock.addItem(mydock.newItemWithKeybinding("u", "Zen Browser", true))
mydock.addItem(mydock.newItemWithKeybinding("h", "Vivaldi", true))
mydock.addItem(mydock.newItemWithKeybinding("i", "Brave Browser", true))
mydock.addItem(mydock.newItemWithKeybinding("f", "Firefox", true))
mydock.addItem(mydock.newItemWithKeybinding("s", "Sublime Text"))
mydock.addItem(mydock.newItemWithKeybinding("d", "Finder", nil, displayFinder))
mydock.addItem(mydock.newBrightnessItem())
-- mydock.addItem(mydock.newNightItem())
-- mydock.addItem(mydock.newDayItem())
mydock.addItem(mydock.moveToRightOnScreenItem())
mydock.addItem(mydock.moveToLeftOnScreenItem())
mydock.addItem(mydock.maximizeWindowItem())
mydock.addItem(mydock.moveToOtherScreenItem())

-- Define the function to be triggered when mouse button 12 is pressed
local function mouseButton12Function()
  -- print("Mouse button 12 pressed!")
  my_wm.hideAllApps()
end

-- Create a new event tap for raw mouse events
mouseEventTap = hs.eventtap.new({ hs.eventtap.event.types.otherMouseUp }, function(event)
  -- print('In mouse event callback')
  local rawEventData = event:getRawEventData()
  -- myInspect("raw data", rawEventData)
  if rawEventData.NSEventData.buttonNumber == 11 then
    -- Call the defined function
    mouseButton12Function()
  end
end)

-- Start the event tap
mouseEventTap:start()
--
-- hs.notify.new({ title = "Hammerspoon", informativeText = "Hide All Applications script loaded" }):send()

hs.hotkey.bind({ "alt", "ctrl" }, "R", function()
  hs.reload()

end)

local setResolutionTo1440p = function ()
    local screens = hs.screen.allScreens()
    for _, screen in ipairs(screens) do
      screen:setMode(2560, 1440, 2, 60, 8)
    end
end

setResolutionTo1440p()

-- hs.loadSpoon('ControlEscape'):start() -- Load Hammerspoon bits from https://github.com/jasonrudolph/ControlEscape.spoon
cherry = hs.loadSpoon('Cherry')
cherry.duration = 30
cherry:bindHotkeys({
    start = {{"cmd", "control"}, "P"},
    pause = {{"cmd", "alt"}, "P"},
    reset = {{"cmd", "alt"}, "R"}
})


hs.alert.show("Config loaded")
