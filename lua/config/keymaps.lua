
-- Opens neotree CTRL + e and closes it when it's open
vim.keymap.set({'n', 'i'}, '<C-e>', function() vim.cmd(':Neotree toggle reveal_force_cwd') end)


-- Allows to use 'jj' instead <Esc> to out from insert mode.
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })

-- Telescope keymaps.
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gd', builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>wk', builtin.keymaps, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status,{})

-- Toggleterm keymaps
vim.keymap.set({'n', 'i'}, '<C-t>', function() vim.cmd(':ToggleTerm direction=horizontal size=6') end)

-- Competitest keymaps
vim.keymap.set({'n', 'i'}, '<A-e>', function() vim.cmd(':CompetiTest edit_testcase') end)
vim.keymap.set({'n', 'i'}, '<A-r>', function() vim.cmd(':CompetiTest run') end)
vim.keymap.set({'n', 'i'}, '<A-a>', function() vim.cmd(':CompetiTest add_testcase') end)

