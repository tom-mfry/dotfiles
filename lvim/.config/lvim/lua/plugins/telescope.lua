return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = {},
    },
    pickers = {
      find_files = {
        find_command = { "fd", "--type", "f", "--hidden", "--follow" },
      },
    },
  },
}
