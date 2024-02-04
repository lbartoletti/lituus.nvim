local colors = require("lituus.colors").default
local opts = require("lituus.config").options
local lituus = {}

if opts.transparent then
    colors.bg = "NONE"
end

lituus.normal = {
    a = { fg = colors.blue, bg = colors.bg },
    b = { fg = colors.cyan, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
    x = { fg = colors.fg, bg = colors.bg },
    y = { fg = colors.magenta, bg = colors.bg },
    z = { fg = colors.grey, bg = colors.bg },
}
lituus.insert = {
    a = { fg = colors.green, bg = colors.bg },
    z = { fg = colors.grey, bg = colors.bg },
}
lituus.visual = {
    a = { fg = colors.magenta, bg = colors.bg },
    z = { fg = colors.grey, bg = colors.bg },
}
lituus.terminal = {
    a = { fg = colors.orange, bg = colors.bg },
    z = { fg = colors.grey, bg = colors.bg },
}

return lituus
