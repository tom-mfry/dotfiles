return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- This makes hidden files visible by default
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  },
}
