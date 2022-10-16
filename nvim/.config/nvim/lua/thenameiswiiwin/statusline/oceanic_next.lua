local colors = require "thenameiswiiwin.colors"
local H = {}
H.normal = {
  a = {bg = colors.base01, fg = colors.white},
  b = {bg = colors.base01, fg = colors.white},
  c = {bg = colors.base01, fg = colors.white}
}
H.insert = {
  a = {bg = colors.base01, fg = colors.green},
  b = {bg = colors.base01, fg = colors.green},
  c = {bg = colors.base01, fg = colors.green}
}
H.visual = {
  a = {bg = colors.base01, fg = colors.orange},
  b = {bg = colors.base01, fg = colors.orange},
  c = {bg = colors.base01, fg = colors.orange}
}
H.replace = {
  a = {bg = colors.base01, fg = colors.red},
  b = {bg = colors.base01, fg = colors.red},
  c = {bg = colors.base01, fg = colors.red}
}
H.command = {
  a = {bg = colors.base01, fg = colors.cyan},
  b = {bg = colors.base01, fg = colors.cyan},
  c = {bg = colors.base01, fg = colors.cyan}
}

H.terminal = H.normal

H.inactive = {
  a = {bg = colors.base01, fg = colors.base03},
  b = {bg = colors.base01, fg = colors.base03},
  c = {bg = colors.base01, fg = colors.base03}
}
return H
