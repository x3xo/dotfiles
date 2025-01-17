local M = {}

M.apps = {}

hs.alert.defaultStyle = {
  strokeWidth     = 2,
  strokeColor     = { white = 1, alpha = 1 },
  fillColor       = { white = 0, alpha = 0.75 },
  textColor       = { white = 1, alpha = 1 },
  textFont        = ".AppleSystemUIFont",
  textSize        = 27,
  radius          = 7,
  atScreenEdge    = 0,
  fadeInDuration  = 0.15,
  fadeOutDuration = 0.15,
  padding         = nil,
}

M.k = hs.hotkey.modal.new('cmd', 'g')

M.k:bind('', 'escape', function()
  hs.alert.closeAll()
  M.k:exit()
end)

local myInspect = function(itemName, item)
  local inspect = hs.inspect(item)
  print(itemName .. ":", inspect)
end

function M.add(app, key)
  local binding = {
    app = app,
    key = key,
    image = nil,
  }

  -- local bid = hs.application.infoForBundlePath("/Applications/" .. app .. ".app")
  local bid = app == "Finder" and hs.application.infoForBundlePath("/System/Library/CoreServices/Finder.app") or
      hs.application.infoForBundlePath("/Applications/" .. app .. ".app")
  -- myInspect("bid: ", bid)
  if bid and bid.CFBundleIdentifier then
    local image = hs.image.imageFromAppBundle(bid.CFBundleIdentifier)
    binding.image = image
  end

  M.k:bind('', key, 'Pressed ' .. key, function()
    print("pressed: " .. key .. " switching to app: " .. app)
    hs.alert.closeAll()
    M.k:exit()
    hs.application.launchOrFocus(app)
  end)

  table.insert(M.apps, binding)
  return binding
end

function M.k:entered()
  -- hs.alert 'Entered mode'
  hs.alert.show('Choose app:', true)

  for k, v in ipairs(M.apps) do
    hs.alert.showWithImage(v.key .. " - " .. v.app .. "", v.image, true)

  end

end

function M.k:exited()
  -- hs.alert 'Exited mode'
end

return M
