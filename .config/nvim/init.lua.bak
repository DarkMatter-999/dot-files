local vimrc = vim.fn.stdpath("config") .. "/notinit.vim"
vim.cmd.source(vimrc)

vim.opt.list = true
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    show_end_of_line = true,
}

-- GitSigns
require('gitsigns').setup() 

-- Indent-BlankLine
require("indent_blankline").setup {show_end_of_line = true}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
