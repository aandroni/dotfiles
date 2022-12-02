-- Only use Conjure for Clojure
vim.g["conjure#filetypes"] = {"clojure"}

-- Disable HUD
vim.g["conjure#log#hud#enabled"] = false

-- Position HUD at the bottom, full width
-- vim.g["conjure#log#hud#anchor"] = "SE"
-- vim.g["conjure#log#hud#width"] = 1.0

-- Disable diagnostics in log buffer
vim.cmd("autocmd BufNewFile conjure-log-* lua vim.diagnostic.disable(0)")
