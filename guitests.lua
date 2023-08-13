os.loadAPI("/disk/devel-alex/glucose")

local errorMsg = {
    [1] = "You presed somewhere on the screen",
    [2] = "and there is no function here :)/>/>/>/>/>/>/>",
    [3] = "pres ok to resume working",
    [4] = "also this dialogue box is",
    [5] = "alot bigger :D/>/>/>/>/>/>/>"
}

local fileText = {
    [1] = "This is the File Menu.",
    [2] = "and this message here",
    [3] = "is only a placeholder",
    [4] = "for actual messages later",
    [5] = "to come! LG Alex"
}

local editText = {
    [1] = "This is the Edit Menu.",
    [2] = "",
    [3] = "",
    [4] = "",
    [5] = ""
}

local insertText = {
    [1] = "This is the Insert Menu.",
    [2] = "",
    [3] = "",
    [4] = "",
    [5] = ""
}

local formatText = {
    [1] = "This is the Format Menu.",
    [2] = "",
    [3] = "",
    [4] = "",
    [5] = ""
}

term.setBackgroundColor(colors.white)
term.setTextColor(colors.gray)
term.clear()

glucose.writeCentered("===============================", 9)
glucose.writeCentered("Test Application © MrObsidy24", 10)
glucose.writeCentered("  Fetching necessary data...   ", 11)
sleep(5)

glucose.init("Test App", "MrObsidy24")

glucose.setRibbonBaseColor(colors.red)
glucose.makeEdgeButton("X", 1)
glucose.setRibbonBaseColor(colors.lime)
glucose.makeRibbonEntry(" File ", "file")
glucose.setRibbonAttribute("file", "openColor", colors.green)
glucose.setRibbonBaseColor(colors.gray)
glucose.makeRibbonEntry(" Start ", "edit")
glucose.makeRibbonEntry(" Insert ", "insert")
glucose.makeRibbonEntry(" Format ", "format")
glucose.setRibbonAttribute("file", "ribbonData", fileText)
glucose.setRibbonAttribute("edit", "ribbonData", editText)
glucose.setRibbonAttribute("insert", "ribbonData", insertText)
glucose.setRibbonAttribute("format", "ribbonData", formatText)
glucose.openRibbon("edit")

while true do
  local event, button, x, y = os.pullEvent("mouse_click")

  local filexstart = glucose.getRibbonAttribute("file", "startPosition")
  local editxstart = glucose.getRibbonAttribute("edit", "startPosition")
  local filexend = glucose.getRibbonAttribute("file", "endPosition")
  local editxend = glucose.getRibbonAttribute("edit", "endPosition")
  local insertxstart = glucose.getRibbonAttribute("insert", "startPosition")
  local formatxstart = glucose.getRibbonAttribute("format", "startPosition")
  local insertxend = glucose.getRibbonAttribute("insert", "endPosition")
  local formatxend = glucose.getRibbonAttribute("format", "endPosition")
  local xbutton = term.getSize()

  if button == 1 and x >= filexstart and x = editxstart and x = insertxstart and x = formatxstart and x 
