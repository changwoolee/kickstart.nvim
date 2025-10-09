-- lua/config/settings.lua
-- All the vim settings go here.

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.have_nerd_font = true

local o = vim.o
local a = vim.api

-- Highlight current location
o.cursorline = true
o.cursorlineopt = "screenline"
o.cursorcolumn = false

-- Disable 'How to Disable Mouse'
a.nvim_command('aunmenu PopUp.How-to\\ disable\\ mouse')
a.nvim_command('aunmenu PopUp.-1-')

-- Show line number and dynamically activate relative line numbers
o.number = true
-- a.nvim_create_autocmd(
-- 	{ "BufEnter", "FocusGained", "InsertLeave", "WinEnter" },
-- 	{ pattern = "*", command = "if &nu && mode() != 'i' | set rnu | endif", }
-- )
-- a.nvim_create_autocmd(
-- 	{ "BufLeave", "FocusLost", "InsertEnter", "WinLeave" },
-- 	{ pattern = "*", command = "if &nu | set nornu | endif", }
-- )

-- No line wrap and better scrolling
o.wrap = true
o.scrolloff = 3

-- Persistent undo between sessions
o.undofile = true

-- Disable unneeded backup
o.backup = false
o.writebackup = false

-- Improve search
o.ignorecase = true
o.smartcase = true
o.hlsearch = true

-- Shows the effects of a substitution in another panel
o.inccommand = "split"

-- Allow code folding
-- o.foldmethod = "indent"
-- o.foldlevel = 4

-- Better indents
vim.cmd [[filetype plugin indent on]]
o.autoindent = true
o.smartindent = true
o.breakindent = false

-- Better tabs
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true

-- Spell check
o.spelllang = "en_us"
o.spell = true

-- Use system clipboard
o.clipboard = "unnamedplus"

-- Decrease update time
o.updatetime = 500
o.timeoutlen = 300

-- Set max number of items in popup menus
o.pumheight = 5

-- Highlight on yank
local highlight_group = a.nvim_create_augroup("YankHighlight", { clear = true })
a.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

-- Python-specific indentation behavior
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.indentkeys:append("0),0],0},=elif,=except,=finally")
    vim.opt_local.autoindent = true
    vim.opt_local.smartindent = true
  end,
})

-- pep8-indent
vim.g.python_pep8_indent_multiline_string = 1
vim.g.python_pep8_indent_hang_closing = 0

-- Disable unused features
for _, plugin in pairs({
	"netrwFileHandlers",
	"spellfile_plugin",
	"matchit"
}) do
	vim.g["loaded_" .. plugin] = 1
end
