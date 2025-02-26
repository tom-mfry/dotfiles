-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local options = {
  --  backup = false,                          -- Disables creation of backup files.
  clipboard = "unnamedplus", -- Enables system clipboard access.
  --  cmdheight = 2,                           -- Adjusts the height of the command line for messages.
  --  completeopt = { "menuone", "noselect" }, -- Configures completion options (e.g., `menuone`, `noselect`).
  --  conceallevel = 0,                        -- Ensures concealed text is visible in Markdown.
  --  fileencoding = "utf-8",                  -- Sets file encoding to UTF-8.
  hlsearch = false, -- Highlights all matches of the search pattern.
  incsearch = true, -- dynamically jump to and highlight the first match
  ignorecase = true, -- Ignores case in search patterns.
  --  mouse = "a",                             -- Enables mouse usage in all modes.
  --  pumheight = 10,                          -- Sets the maximum height of the pop-up menu.
  --  showmode = true,                         -- Hides mode display (e.g., `-- INSERT --`).
  --  showtabline = 2,                         -- Always shows the tab bar.
  --  smartcase = true,                        -- Makes searches case-sensitive if uppercase letters are used.
  smartindent = true, -- Automatically indents new lines intelligently.
  splitbelow = true, -- Forces horizontal splits to appear below the current window.
  splitright = true, -- Forces vertical splits to appear to the right of the current window.
  --  swapfile = false,                        -- Disables creation of swap files.
  termguicolors = true, -- Enables true color support in terminals.
  --  timeoutlen = 300,                        -- Sets timeout length for mapped sequences (in milliseconds).
  --  undofile = true,                         -- Enables persistent undo across sessions.
  --  updatetime = 300,                        -- Reduces delay for triggering completion and updates.
  --  writebackup = false,                     -- Prevents editing of a file already opened elsewhere.
  expandtab = true, -- Converts tabs to spaces.
  shiftwidth = 2, -- Sets the width of an indentation (in spaces).
  tabstop = 2, -- Number of spaces a tab counts for.
  cursorline = true, -- Highlights the current line.
  number = true, -- Enables absolute line numbers.
  relativenumber = true, -- Toggles relative line numbers.
  numberwidth = 4, -- Sets the width of the line number column.
  signcolumn = "yes", -- Always shows the sign column (avoids text shifting).
  --  wrap = true,                             -- Enables line wrapping.
  --  linebreak = true,                        -- Wraps lines without breaking words.
  scrolloff = 999, -- Keeps at least 8 lines visible above and below the cursor.
  sidescrolloff = 8, -- Keeps at least 8 columns visible to the left and right of the cursor.
  --  guifont = "monospace:h17",               -- Specifies the font for GUI applications.
  --  whichwrap = "bs<>[]hl",                  -- Allows certain keys to navigate between lines.
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
