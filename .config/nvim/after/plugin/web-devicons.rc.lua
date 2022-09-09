local status, icons = pcall(require, "nvim-web-devicons")
if (not status) then return end

icons.setup {
    -- personal icons (to override)
    override = {
    },
    -- globally enable default icons
    default = true
}
