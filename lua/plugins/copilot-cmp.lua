local os = require("helpers.os")

if not os.is_mac then
  return {}
end

return {
  "zbirenbaum/copilot-cmp",
  dependencies = { "zbirenbaum/copilot.lua" },
  config = function()
    require("copilot_cmp").setup()
  end,
}
