local M = {}

function M.setBrightness(brightness_percent)
  print("####### night time")
  print("setting brightness to: ", brightness_percent)
  local home_dir = os.getenv("HOME")
  -- local task = hs.task.new("/bin/ls", p, {"-al"})
  local task = hs.task.new(home_dir .. "/bin/bnessa.sh", p, {brightness_percent})
  local environment = task:environment()
  local inspect = hs.inspect(task)
  -- print("task: ", inspect)
  task:start()
end

function M.sleepDisplay()
    hs.execute("/usr/bin/pmset displaysleepnow")
end

return M
