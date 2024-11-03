

-- ══ TODO: ═══════════════════════════════════════════════════════════
--
--  - [ ] Get this working so that i use the obsidian completion source


return {
  enabled = false,
  'saghen/blink.cmp',
  dependencies = {
    { 'saghen/blink.compat' },
    { 'epwalsh/obsidian.nvim', lazy = true },
  },
  opts = {
    sources = {
      completion = {
        enabled_providers = {'lsp', 'path', 'snippets', 'buffer', 'obsidian'}
      },
      providers = {
        obsidian = {
          name = 'obsidian',
          module = 'blink.compat.source',
          score_offset = -2,
          opts = {
            -- Obsidian-specific options can be added here
            -- These will be passed to the Obsidian completion source
          }
        }
      }
    }
  }
}
