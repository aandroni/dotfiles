local saga_ok, saga = pcall(require, "lspsaga")
if not saga_ok then
  return
end

saga.setup({
  finder_action_keys = {
    open = "<CR>",
  },
  definition_action_keys = {
    edit = "<CR>",
  },
  -- No lightbulb
  code_action_lightbulb = {
    enable = false,
  },
})
