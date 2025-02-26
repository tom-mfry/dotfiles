-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

local function setup_path_copying()
  -- Add a "dummy" keymap to set the group name
  keymap.set("n", "<leader>fy", "", { desc = "yank paths" })

  keymap.set("n", "<leader>fyr", function()
    local relative_path = vim.fn.fnamemodify(vim.fn.expand("%"), ":.")
    vim.fn.setreg("+", relative_path)
    vim.notify("Copied relative path: " .. relative_path)
  end, { desc = "Relative path" })

  keymap.set("n", "<leader>fya", function()
    local absolute_path = vim.fn.fnamemodify(vim.fn.expand("%"), ":p")
    vim.fn.setreg("+", absolute_path)
    vim.notify("Copied absolute path: " .. absolute_path)
  end, { desc = "Absolute path" })

  keymap.set("n", "<leader>fyf", function()
    local filename = vim.fn.fnamemodify(vim.fn.expand("%"), ":t")
    vim.fn.setreg("+", filename)
    vim.notify("Copied filename: " .. filename)
  end, { desc = "Filename only" })
end

setup_path_copying()

-- override the default telescope ff to include hidden files
keymap.set("n", "<leader>ff", function()
  require("telescope.builtin").find_files({
    hidden = true,
  })
end, { desc = "Find files" })

-- Map leader + bn to next buffer
keymap.set("n", "<leader>bn", "<cmd>bnext<cr>", {
  desc = "Go to next buffer",
  silent = true,
  noremap = true,
})

-- Map leader + bp to previous buffer
keymap.set("n", "<leader>bp", "<cmd>bprevious<cr>", {
  desc = "Go to previous buffer",
  silent = true,
  noremap = true,
})

-- leader fC to open telescope in .config
vim.keymap.set("n", "<leader>fC", function()
  require("telescope.builtin").find_files({
    cwd = vim.fn.expand("~/.config"), -- Use vim.fn.expand for better compatibility
    prompt_title = "Find Files in .config",
    file_ignore_patterns = {
      "StardewValley/.*",
      "github%-copilot/.*",
      "iterm2/.*",
      ".*.git/.*",
      "raycast/extensions/.*",
      "karabiner/automatic_backups/karabiner_.*.json",
    },
  })
end, { desc = "Find files in .config" })

vim.keymap.set("n", "<leader>cM", function()
  require("telescope.builtin").lsp_document_symbols({
    symbols = { "Function", "Method" },
    prompt_title = "Find Methods in File",
  })
end, { desc = "Find all methods in current file" })
