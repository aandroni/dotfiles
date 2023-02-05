local status_ok, nvimtree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

-- recommended settings from nvim-tree doc
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
  view = {
    side = "right",
  },
})
