return {
    "lukas-reineke/headlines.nvim",
    enable = false,
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
        require("headlines").setup {
            markdown = {
                source_pattern_start = "^```",
                source_pattern_end = "^```$",
                dash_pattern = "^---+$",
                headline_pattern = "^#+",
                headline_signs = { "Headline" },
                codeblock_sign = "CodeBlock",
                -- Fira code has lower 3/8 block character, but no upper 3/8 block character
                -- Replace with half blocks
                fat_headline_lower_string = "▀",
                fat_headline_upper_string = "▄",
            },
        }
    end,
}
