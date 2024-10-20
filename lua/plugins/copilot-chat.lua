--          ╔═════════════════════════════════════════════════════════╗
--          ║                       CopilotChat                       ║
--          ╚═════════════════════════════════════════════════════════╝


-- ══ TODO: ═══════════════════════════════════════════════════════════
--
-- - [ ] Need access to the rest of the commands
-- - [ ] Copilot autocomplete <tab> does not work within the chat

return {
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        branch = "canary",
        dependencies = {
            { "github/copilot.vim" }, -- or github/copilot.vim
            { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
        },
        event = "VeryLazy",
        opts = {
            show_help = "yes", -- Show help text for CopilotChatInPlace, default: yes
            debug = false, -- Enable or disable debug mode, the log file will be in ~/.local/state/nvim/CopilotChat.nvim.log
            disable_extra_info = 'no', -- Disable extra information (e.g: system prompt) in the response.
            language = "English" -- Copilot answer language settings when using default prompts. Default language is English.
            -- proxy = "socks5://127.0.0.1:3000", -- Proxies requests via https or socks.
            -- temperature = 0.1,
        },
        build = function()
            vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
        end,
        config = function()
            require("CopilotChat").setup({
                auto_insert_mode = true,
                show_help = true,
                show_folds = false,
                question_header = "  Mike ",
                answer_header = "  Copilot ",
                window = {
                    layout = "float",
                    width = 0.6,
                    height = 0.7,
                    border = "rounded",
                },
                mappings = {
                    close = {
                        normal = "q",
                        insert = "C-q",
                    },
                },
                selection = function(source)
                    local select = require("CopilotChat.select")
                    return select.visual(source) or select.buffer(source)
                end,
            })
        end,
        keys = {
            { "<leader>cce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
            { "<leader>ccr", "<cmd>CopilotChatReview<cr>", desc = "CopilotChat - Review code" },
            { "<leader>ccf", "<cmd>CopilotChatFix<cr>", desc = "CopilotChat - Fix" },
            { "<leader>cco", "<cmd>CopilotChatOptimize<cr>", desc = "CopilotChat - Optimize" },
            { "<leader>ccd", "<cmd>CopilotChatDocs<cr>", desc = "CopilotChat - Add Documentation" },
            { "<leader>cct", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
            { "<leader>ccd", "<cmd>CopilotChatFixDiagnostic<cr>", desc = "CopilotChat - diagnostic issue in file" },
            { "<leader>ccc", "<cmd>CopilotChatCommit<cr>", desc = "CopilotChat - Commit message" },
            { "<leader>ccs", "<cmd>CopilotChatCommitStaged<cr>", desc = "CopilotChat - Commit message" },
            { "<leader>ccT", "<cmd>CopilotChatToggle<cr>", desc = "Toggle Copilot Chat" },
            {
                "<leader>ccq",
                function()
                    local input = vim.fn.input("Quick Chat: ")
                    if input ~= "" then
                        require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
                    end
                end,
                desc = "CopilotChat - Quick chat",
            },
        },
    },
}
