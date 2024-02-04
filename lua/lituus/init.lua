local theme = require("lituus.theme")
local config = require("lituus.config")
local util = require("lituus.util")

local M = {}

function M.load()
    util.load(theme.setup())
end

M.setup = config.setup

M.colorscheme = M.load

return M
