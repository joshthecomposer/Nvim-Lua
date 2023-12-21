-- Change this to the folder corresponding to your current OS.
local environment = "windows"

require(environment .. ".core.colorscheme")
require(environment .. ".core.options")
require(environment .. ".plugins-setup")
require(environment .. ".plugins.treesitter")
require(environment .. ".plugins.harpoon")
require(environment .. ".plugins.lsp")

