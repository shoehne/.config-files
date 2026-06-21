local main_mod = "SUPER"

hl.bind(main_mod .. " + Q",
  hl.dsp.window.close(),
  {
    description = "Close window"
  })
for i = 1, 10 do
  local key = i % 10
  hl.bind(main_mod .. " + " .. key,
    hl.dsp.focus({workspace = i}))
  hl.bind(main_mod .. " + SHIFT + " .. key,
    hl.dsp.window.move({workspace = i}))
end

hl.bind(main_mod .. " + F ",
  hl.dsp.window.fullscreen({
    "fullscreen",
    toggle}))
hl.bind(main_mod .. " + ALT + F",
  hl.dsp.window.fullscreen({
    "maximized",
    toggle}))
hl.bind(main_mod .. " + T",
  hl.dsp.window.float({toggle}))
hl.bind(main_mod .. " + H",
  hl.dsp.focus({direction = "left"}))
hl.bind(main_mod .. " + J",
  hl.dsp.focus({direction = "down"}))
hl.bind(main_mod .. " + K",
  hl.dsp.focus({direction = "up"}))
hl.bind(main_mod .. " + L",
  hl.dsp.focus({direction = "right"}))
hl.bind("ALT + TAB",
  hl.dsp.window.cycle_next())
