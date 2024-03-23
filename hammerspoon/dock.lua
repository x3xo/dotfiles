local M = {}
local m = require("monitor")
my_wm = require("mywm")

M.items = {}

function M.addItem(item)
  table.insert(M.items, item)
end

local myswitcher = require("appswitcher")

local myInspect = function(itemName, item)
  local inspect = hs.inspect(item)
  print(itemName .. ":", inspect)
end

-- app launching
local function activateApp(key, app_name)
  hs.hotkey.bind({ "cmd", "ctrl" }, key, function()
    hs.application.launchOrFocus(app_name)
  end)
end

function M.newItemWithKeybinding(key, app_name, add_to_app_switcher, callback)
  local item = hs.menubar.new()

  activateApp(key, app_name)
  if add_to_app_switcher then
    myswitcher.add(app_name, key)
  end

  local bid
  if app_name == "Finder" then
    bid = hs.application.infoForBundlePath("/System/Library/CoreServices/Finder.app")
  else
    bid = hs.application.infoForBundlePath("/Applications/" .. app_name .. ".app")
  end

  if bid and bid.CFBundleIdentifier then
    local image = hs.image.imageFromAppBundle(bid.CFBundleIdentifier)
    image:size({ h = 24.0, w = 24.0 })
    item:setIcon(image, false)
    item:setTitle(key)
  else
    item:setTitle(key .. " ➜ " .. app_name)
  end

  item:setClickCallback(function()
    print("callback app_name: ")
    local inspect = hs.inspect(app_name)
    print(inspect)
    hs.application.launchOrFocus(app_name)
  end)
  if callback ~= nil then
    callback()
  end
  return item
end

local function p(task, stdOut, stdErr)
  print('inside mydock.p::::::::::::task:', task)
  print('inside mydock.p::::::::::::stdOut:', stdOut)
  print('inside mydock.p::::::::::::stdErr', stdErr)
end

local function runApp(app)
  print("hello")
  local home_dir = os.getenv("HOME")
  local task = hs.task.new(app, p)
  local inspect = hs.inspect(task)
  print("task: ", inspect)
  task:start()
end

function M.newItemRunShellCommand(displayName, commandPath, commandParams)
  local item = hs.menubar.new()
  item:setTitle(displayName)
  item:setClickCallback(function()
    runApp(commandPath)
  end)
  return item
end

function M.newBrightnessItem()
  local home_dir = os.getenv("HOME")
  local item = M.newItemRunShellCommand("", home_dir .. "/bin/gui-bnessa.sh")
  item:setIcon(hs.image.imageFromPath("images/brightness.png"):size({ w = 20.0, h = 20.0 }), false)
  return item
end

function M.newNightItem()
  -- TODO convert these to mydock.newItemRunShellCommand
  -- Create a new menubar item
  local item = hs.menubar.new()
  -- menuBarItem:setTitle("night")
  item:setIcon(hs.image.imageFromPath("images/night.png"):size({ w = 16.0, h = 16.0 }), false)
  item:setClickCallback(function()
    m.setBrightness("0")
  end)
  return item
end

function M.newDayItem()
  local item = hs.menubar.new()
  -- dayTimeMenuBarItem:setTitle("day")
  item:setIcon(hs.image.imageFromPath("images/sun.png"):size({ w = 20.0, h = 20.0 }), false)
  item:setClickCallback(function()
    m.setBrightness("40")
  end)
  return item
end

function M.moveToRightOnScreenItem()
  local item = hs.menubar.new()
  item:setIcon(hs.image.imageFromPath("images/right.png"):size({ w = 20.0, h = 20.0 }), false)
  item:setClickCallback(function()
    my_wm.tileRight()
  end)
  return item
end

function M.moveToLeftOnScreenItem()
  local item = hs.menubar.new()
  item:setIcon(hs.image.imageFromPath("images/left.png"):size({ w = 20.0, h = 20.0 }), false)
  item:setClickCallback(function()
    my_wm.tileLeft()
  end)
  return item
end

function M.maximizeWindowItem()
  local item = hs.menubar.new()
  item:setIcon(hs.image.imageFromPath("images/maximize.png"):size({ w = 20.0, h = 20.0 }), false)
  item:setClickCallback(function()
    my_wm.maximizeWindow(hs.window.focusedWindow())
  end)
  return item
end

function M.moveToOtherScreenItem()
  local item = hs.menubar.new()
  item:setIcon(hs.image.imageFromPath("images/swap.png"):size({ w = 20.0, h = 20.0 }), false)
  item:setClickCallback(function()
    my_wm.moveToOtherScreen()
  end)
  return item
end

return M
