--          ╔═════════════════════════════════════════════════════════╗
--          ║                      firenvim.nvim                      ║
--          ╚═════════════════════════════════════════════════════════╝

--          ┌─────────────────────────────────────────────────────────┐
--          │   `firenvim.nvim` embeds Neovim into web browser text   │
--          │        areas for a seamless editing experience.         │
--          └─────────────────────────────────────────────────────────┘


-- ═══ TODO: ═════════════════════════════════════════════════════════
--
--  - [ ] Is this necessary? Most comment boxes are tiny and resizing is a pain in the ass


return {
    'glacambre/firenvim',
    build = ":call firenvim#install(0)"
}
