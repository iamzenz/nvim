

-- ══ TODO: ═══════════════════════════════════════════════════════════
--
--  - [ ] make copilot-cmp work
--  - [ ] add toggle for copilot https://github.com/LazyVim/LazyVim/discussions/4232
--  - [ ] 
return {
    "zbirenbaum/copilot-cmp",
    event = "InsertEnter",
    config = function ()
        require("copilot_cmp").setup()
    end,
    dependencies = {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        config = function()
            require("copilot").setup({
                suggestion = { enabled = false },
                panel = { enabled = false },
            })
        end,
    },
}

-- return {
--
--     -- Copilot configuration
--     -- 
--     {
--         "zbirenbaum/copilot.lua",
--         event = "InsertEnter",
--         config = function()
--             require('copilot').setup({
--                 panel = {
--                     enabled = false,
--                     auto_refresh = true,
--                     keymap = {
--                         jump_prev = "[[",
--                         jump_next = "]]",
--                         accept = "<CR>",
--                         refresh = "gr",
--                         open = "<M-CR>"
--                     },
--                     layout = {
--                         position = "bottom", -- | top | left | right
--                         ratio = 0.4
--                     },
--                 },
--                 suggestion = {
--                     enabled = false,
--                     auto_trigger = true,
--                     hide_during_completion = true,
--                     debounce = 75,
--                     keymap = {
--                         accept = "<M-l>",
--                         accept_word = false,
--                         accept_line = false,
--                         next = "<M-]>",
--                         prev = "<M-[>",
--                         dismiss = "<C-]>",
--                     },
--                 },
--                 filetypes = {
--                     yaml = false,
--                     markdown = false,
--                     help = false,
--                     gitcommit = false,
--                     gitrebase = false,
--                     hgcommit = false,
--                     svn = false,
--                     cvs = false,
--                     lua = true,
--                     python = true,
--                     ["."] = false,
--                 },
--                 copilot_node_command = 'node', -- Node.js version must be > 18.x
--                 server_opts_overrides = {},
--             })
--         end,
--     },
--     {
--         "zbirenbaum/copilot-cmp",
--         config = function ()
--             require("copilot_cmp").setup()
--         end
--     },
--
--     -- CopilotChat configuration
--     {
--         "CopilotC-Nvim/CopilotChat.nvim",
--         enable = false,
--         branch = "canary",
--         dependencies = {
--             { "zbirenbaum/copilot.lua" },
--             { "nvim-lua/plenary.nvim" },
--         },
--         event = "VeryLazy",
--         opts = {
--             show_help = "yes", -- Show help text for CopilotChatInPlace, default: yes
--             debug = false, -- Enable or disable debug mode, the log file will be in ~/.local/state/nvim/CopilotChat.nvim.log
--             disable_extra_info = 'no', -- Disable extra information (e.g: system prompt) in the response.
--             language = "English", -- Copilot answer language settings when using default prompts. Default language is English.
--             -- proxy = "socks5://127.0.0.1:3000", -- Proxies requests via https or socks.
--             -- temperature = 0.1,
--         },
--         build = function()
--             vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
--         end,
--         config = function()
--             require("CopilotChat").setup({
--                 auto_insert_mode = true,
--                 show_help = true,
--                 show_folds = false,
--                 question_header = "  Mike ",
--                 answer_header = "  Copilot ",
--                 window = {
--                     layout = "float",
--                     width = 0.6,
--                     height = 0.7,
--                     border = "rounded",
--                     zindex = 100,
--                 },
--                 mappings = {
--                     close = {
--                         normal = "q",
--                         insert = "C-c",
--                     },
--                     reset = {
--                         normal = '<C-r>',
--                         insert = '<C-r>',
--                     },
--                     accept_diff = {
--                         normal = '<C-y>',
--                         insert = '<C-y>',
--                     },
--                     yank_diff = {
--                         normal = 'gy',
--                         register = '"',
--                     },
--                     show_diff = {
--                         normal = 'gd',
--                     },
--                     show_system_prompt = {
--                         normal = 'gp',
--                     },
--                 },
--                 selection = function(source)
--                     local select = require("CopilotChat.select")
--                     return select.visual(source) or select.buffer(source)
--                 end,
--             })
--         end,
--         keys = {
--             { "<leader>cce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
--             { "<leader>ccr", "<cmd>CopilotChatReview<cr>", desc = "CopilotChat - Review code" },
--             { "<leader>ccf", "<cmd>CopilotChatFix<cr>", desc = "CopilotChat - Fix" },
--             { "<leader>cco", "<cmd>CopilotChatOptimize<cr>", desc = "CopilotChat - Optimize" },
--             { "<leader>ccd", "<cmd>CopilotChatDocs<cr>", desc = "CopilotChat - Add Documentation" },
--             { "<leader>ccT", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
--             { "<leader>ccD", "<cmd>CopilotChatFixDiagnostic<cr>", desc = "CopilotChat - Fix diagnostic issue in file" },
--             { "<leader>ccc", "<cmd>CopilotChatCommit<cr>", desc = "CopilotChat - Commit message" },
--             { "<leader>ccs", "<cmd>CopilotChatCommitStaged<cr>", desc = "CopilotChat - Commit staged changes" },
--             { "<leader>cct", "<cmd>CopilotChatToggle<cr>", desc = "Toggle Copilot Chat" },
--             {
--                 "<leader>ccq",
--                 function()
--                     local input = vim.fn.input("Quick Chat: ")
--                     if input ~= "" then
--                         require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
--                     end
--                 end,
--                 desc = "CopilotChat - Quick chat",
--             },
--         },
--     },
-- }
