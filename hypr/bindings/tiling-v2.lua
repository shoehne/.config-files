local main_mod = "SUPER"

hl.bind(main_mod .. " + Q",
  hl.dsp.window.close(),
  {
    release = true,
    description = "Close window"
  })
