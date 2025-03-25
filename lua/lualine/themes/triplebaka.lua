local colors = {
  white = '#ffffff',
  black = '#323232',
  lightgray = '#eeeeee',
  gray = '#dddddd',
  red = '#e24673',
  yellow = '#ffd543',
  blue = '#39c5bb'
}

local lualine_b = { bg = colors.lightgray, fg = colors.black }
local lualine_c = { bg = colors.gray, fg = colors.black }

return {
  normal = {
    a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
    b = lualine_b, c = lualine_c
  },
  insert = {
    a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
    b = lualine_b, c = lualine_c
  },
  visual = {
    a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
    b = lualine_b, c = lualine_c
  },
  replace = {
    a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
    b = lualine_b, c = lualine_c
  },
  command = {
    a = { bg = colors.red, fg = colors.black, gui = 'bold' },
    b = lualine_b, c = lualine_c
  },
  inactive = {
    a = { bg = colors.red, fg = colors.black, gui = 'bold' },
    b = lualine_b, c = lualine_c
  },
}
