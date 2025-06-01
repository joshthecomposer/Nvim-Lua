local os = require("helpers.os")

if not os.is_mac then
  return {}
end

return {
  "zbirenbaum/copilot.lua",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<C-l>",
          next = "<C-]>",
          prev = "<C-[>",
          dismiss = nil,
        },
      },
      panel = { enabled = false },
    })
  end,
}
