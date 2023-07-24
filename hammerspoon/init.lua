local printTable = function(table)
  for key, value in pairs(table) do
    print(key, value)
  end
end



local myInspect = function(itemName, item)
  local inspect = hs.inspect(item)
  print(itemName .. ":", inspect)
end


hs.window.animationDuration = 0

my_wm = require("mywm")

-- set bindings
my_wm.moveWindowLeft()
my_wm.tileLeft()
my_wm.tileRight()
my_wm.maximizeWindow()
my_wm.moveToOtherScreen()
my_wm.tileLeftBig()
my_wm.tileRightBig()
my_wm.hideAllApplications()
my_wm.centerWindow()

-- set up your instance(s)
-- expose = hs.expose.new(nil, { showThumbnails = false }) -- default windowfilter, no thumbnails
-- expose_app = hs.expose.new(nil, { onlyActiveApplication = true }) -- show windows for the current application
-- expose_space = hs.expose.new(nil, { includeOtherSpaces = false }) -- only windows in the current Mission Control Space
-- -- for your dozens of browser windows :)
--
--
-- -- then bind to a hotkey
-- hs.hotkey.bind('ctrl-cmd', 'e', 'Expose', function() expose:toggleShow() end)
-- hs.hotkey.bind('ctrl-cmd-shift', 'e', 'App Expose', function() expose_app:toggleShow() end)


local function displayFinder()

  -- TODO: switch to finder

  -- TODO: hide all other apps

  -- TODO: add up to 2 windows next to each other

end

mydock = require("dock")
-- menubardock start

-- docItemDay
-- docItemNight
docItemObsidian = mydock.newItemWithKeybinding("o", "Obsidian")
docItemFirefox = mydock.newItemWithKeybinding("k", "Emacs")
docItemiTerm = mydock.newItemWithKeybinding(";", "iTerm", true)
docItemChrome = mydock.newItemWithKeybinding("j", "Google Chrome")
docItemVivaldi = mydock.newItemWithKeybinding("h", "Vivaldi")
docItemCura = mydock.newItemWithKeybinding("u", "Ultimaker-Cura")
docItemBlender = mydock.newItemWithKeybinding("b", "Blender")
docItemFinder = mydock.newItemWithKeybinding("f", "Finder", nil, displayFinder)



home_dir = os.getenv("HOME")
docItemChooseBrightness = mydock.newItemRunShellCommand("", home_dir .. "/bin/gui-bnessa.sh")
docItemChooseBrightness:setIcon(hs.image.imageFromPath("images/brightness.png"):size({ w = 20.0, h = 20.0 }), false)



m = require("monitor")
-- TODO convert these to mydock.newItemRunShellCommand
-- Create a new menubar item
menuBarItem = hs.menubar.new()
-- menuBarItem:setTitle("night")
menuBarItem:setIcon(hs.image.imageFromPath("images/night.png"):size({ w = 16.0, h = 16.0 }), false)
menuBarItem:setClickCallback(function()
  m.setBrightness("0")
end)


dayTimeMenuBarItem = hs.menubar.new()
-- dayTimeMenuBarItem:setTitle("day")
dayTimeMenuBarItem:setIcon(hs.image.imageFromPath("images/sun.png"):size({ w = 20.0, h = 20.0 }), false)
dayTimeMenuBarItem:setClickCallback(function()
  m.setBrightness("40")
end)

-- hide all apps
-- mouseButton6 =
-- mouseEvent = hs.eventtap.checkMouseButtons()
-- myInspect("mouse event: ", mouseEvent)

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
hs.notify.new({ title = "Hammerspoon", informativeText = "Hide All Applications script loaded" }):send()



myswitcher = require("appswitcher")
-- myswitcher.add('iTerm', 'i')
myswitcher.add('Vivaldi', 'v')
myswitcher.add('Emacs', 'e')
myswitcher.add('Google Chrome', 'g')
myswitcher.add('Blender', 'b')
myswitcher.add('Finder', 'f')


-- hs.alert.defaultStyle = {
--   strokeWidth     = 2,
--   strokeColor     = { white = 1, alpha = 1 },
--   fillColor       = { white = 0, alpha = 0.75 },
--   textColor       = { white = 1, alpha = 1 },
--   textFont        = ".AppleSystemUIFont",
--   textSize        = 27,
--   radius          = 7,
--   atScreenEdge    = 0,
--   fadeInDuration  = 0.15,
--   fadeOutDuration = 0.15,
--   padding         = nil,
-- }
--
--
--
-- k = hs.hotkey.modal.new('cmd', 'g')
-- function k:entered()
--   -- hs.alert 'Entered mode'
--   hs.alert.show('Choose app:', true)
--
--   local bidEmacs = hs.application.infoForBundlePath("/Applications/Emacs.app")
--   local image = hs.image.imageFromAppBundle(bidEmacs.CFBundleIdentifier)
--   -- local asciiImage = image:toASCII()
--   hs.alert.showWithImage("e: Emacs", image, true)
--
--   local bid = hs.application.infoForBundlePath("/Applications/Vivaldi.app")
--   myInspect("bid: ", bid.CFBundleIdentifier)
--   local imageVivaldi = hs.image.imageFromAppBundle(bid.CFBundleIdentifier)
--   hs.alert.showWithImage("v: Vivaldi", imageVivaldi, true)
--
-- end
--
-- function k:exited()
--   -- hs.alert 'Exited mode'
-- end
--
-- k:bind('', 'escape', function()
--   hs.alert.closeAll()
--   k:exit()
-- end)
--
-- k:bind('', 'J', 'Pressed J', function()
--   print 'let the record show that J was pressed'
--   testme()
-- end)
--
-- k:bind('', 'e', 'Pressed e', function()
--   print 'let the record show that e was pressed'
--   hs.alert.closeAll()
--   k:exit()
--   hs.application.launchOrFocus("Emacs")
--   -- testme()
-- end)
--
-- k:bind('', 'v', 'Pressed v', function()
--   print 'let the record show that v was pressed'
--   hs.alert.closeAll()
--   k:exit()
--   hs.application.launchOrFocus("Vivaldi")
--   -- testme()
-- end)


-- TODO: when app switcher is active, treat j and k as ` and tab



-- set up your windowfilter
-- switcher = hs.window.switcher.new() -- default windowfilter: only visible windows, all Spaces
-- switcher_space = hs.window.switcher.new(hs.window.filter.new():setCurrentSpace(true):setDefaultFilter {}) -- include minimized/hidden windows, current Space only
-- switcher_browsers = hs.window.switcher.new { 'Safari', 'Google Chrome' } -- specialized switcher for your dozens of browser windows :)
--
-- -- bind to hotkeys; WARNING: at least one modifier key is required!
-- hs.hotkey.bind('alt', 'tab', 'Next window', function() switcher:next() end)
-- hs.hotkey.bind('alt-shift', 'tab', 'Prev window', function() switcher:previous() end)
--
-- -- alternatively, call .nextWindow() or .previousWindow() directly (same as hs.window.switcher.new():next())
-- hs.hotkey.bind('alt', 'tab', 'Next window', hs.window.switcher.nextWindow)
-- -- you can also bind to `repeatFn` for faster traversing
-- hs.hotkey.bind('alt-shift', 'tab', 'Prev window', hs.window.switcher.previousWindow, nil,
--   hs.window.switcher.previousWindow)





hs.hotkey.bind({ "alt", "ctrl" }, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")
