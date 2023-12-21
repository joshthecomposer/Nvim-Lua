-- Change this to the folder corresponding to your current OS.
local environment = "mac" 

require(environment .. ".plugins-setup")
require(environment .. ".core.options")
require(environment .. ".core.colorscheme")
require(environment .. ".core.keymaps")
require(environment .. ".plugins.treesitter")
require(environment .. ".plugins.lsp")
require(environment .. ".plugins.harpoon")
