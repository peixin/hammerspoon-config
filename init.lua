-- hs.loadSpoon("BingDaily")
-- spoon.BingDaily:init()


hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up", function()
  local win = hs.window.focusedWindow()
  if win == nil then return end
  -- local appName = win:application():name()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:fullFrame()
  -- if appName == 'iTerm2' or appName == 'Terminal' then 
  --   max.w = max.w + 10
  --   max.h = max.h + 20
  --   else print('haha') end
  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)



hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", function()
  local win = hs.window.focusedWindow()
  if win == nil then return end
  local f = win:frame()
  local screen = win:screen()
  local max = screen:fullFrame()
  local w = math.ceil(max.w * 0.7)
  local h = math.ceil(max.h * 0.75)

  f.x = max.x + math.ceil((max.w - w) / 2)
  f.y = max.y + math.ceil((max.h - h) / 2)
  f.w = w
  f.h = h
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
  local win = hs.window.focusedWindow()
  if win == nil then return end
  local f = win:frame()
  local screen = win:screen()
  local max = screen:fullFrame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)


hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
  local win = hs.window.focusedWindow()
  if win == nil then return end
  local f = win:frame()
  local screen = win:screen()
  local max = screen:fullFrame()

  f.x = max.w / 2
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)



hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  local win = hs.window.focusedWindow()
  if win == nil then return end
  local f = win:frame()
  local screen = win:screen()
  local max = screen:fullFrame()
  
  gap = math.ceil(max.w / 20)
  newW = f.w + gap
  if newW < max.w then f.w = newW else f.w = max.w end

  win:setFrame(f)
end)