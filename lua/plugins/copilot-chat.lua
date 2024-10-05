--          ╔═════════════════════════════════════════════════════════╗
--          ║                       CopilotChat                       ║
--          ╚═════════════════════════════════════════════════════════╝


return {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    lazy = true, -- Only load when the commands are executed
    dependencies = {
        { "github/copilot.vim" }, -- or github/copilot.vim
        { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
        debug = true, -- Enable debugging
        -- See Configuration section for rest
    },
    cmd = "CopilotChat",
}
