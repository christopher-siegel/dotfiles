local builtin = require('telescope.builtin')

-- Find Files of Projectj
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- Find Files in Git
vim.keymap.set('n', '<C-p>', builtin.git_files, {}) 
-- Search String in Project across files
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
-- Open Help
vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})
-- Show Recently Used Files
vim.keymap.set('n', '<leader>p.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })


-- Slightly advanced example of overriding default behavior and theme
vim.keymap.set('n', '<leader>/', function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, { desc = '[/] Fuzzily search in current buffer' })


-- Shortcut for searching your neovim configuration files
vim.keymap.set('n', '<leader>sn', function()
    builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim files' })


-- Shortcut for searching your neovim configuration files
vim.keymap.set('n', '<leader>sc', function()
    builtin.find_files { cwd = '/Users/SIEGELCH/Code/' .. vim.fn.input("Project Name > ") }
end, { desc = '[S]earch [C]ode files' })
