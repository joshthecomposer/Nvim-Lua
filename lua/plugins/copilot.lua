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
