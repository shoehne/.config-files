local main_mod = "SUPER"
hl.bind(main_mod .. " + SHIFT + S",
  hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"))
hl.bind("ALT + SHIFT + S",
  hl.dsp.exec_cmd("hyprshot -m region"))
