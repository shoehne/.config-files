hl.config({
  misc = {
    on_focus_under_fullscreen = 1
  }
})

hl.window_rule({
  name = "default",
  match = {
    class = ".*",
  },
  idle_inhibit = "fullscreen",
  opacity = "1.0 0.9",
  suppress_event = "maximize"
})
