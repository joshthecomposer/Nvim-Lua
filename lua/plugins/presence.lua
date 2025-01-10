return {
    "andweeb/presence.nvim",
    config = function()
        require("presence").setup({
            -- General options
            auto_update         = true,                       -- Update activity based on autocmd events
            neovim_image_text   = "I am coding with neovim.", -- Text displayed when hovered over the Neovim image
            main_image          = "neovim",                   -- Main image display (either "neovim" or "file")
            client_id           = "176207353128026122",       -- Use your own Discord application client id
            log_level           = nil,                        -- Log messages at or above this level
            debounce_timeout    = 10,                         -- Number of seconds to debounce events
            enable_line_number  = true,                      -- Displays the current line number instead of the current project
            blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence
            buttons             = true,                       -- Configure Rich Presence button(s)
            file_assets         = {},                         -- Custom file asset definitions
            show_time           = true,                       -- Show the timer

            -- Rich Presence text options
            editing_text        = "Editing %s",               -- Format string rendered when an editable file is loaded
            file_explorer_text  = "Browsing %s",              -- Format string rendered when browsing a file explorer
            git_commit_text     = "Committing changes",       -- Format string rendered when committing changes in git
            plugin_manager_text = "Managing plugins",         -- Format string rendered when managing plugins
            reading_text        = "Reading %s",               -- Format string rendered when a read-only file is loaded
            workspace_text      = "Working on %s",            -- Format string rendered when in a git repository
            line_number_text    = "Line %s out of %s",        -- Format string rendered when `enable_line_number` is set to true
        })
    end,
}
