vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pr", vim.cmd.Rex)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
-- vim.keymap.set("n", "<leader>f", conform.format())

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>//gc<Left><Left><Left>]])

-- Replace word under cursor (normal) or selection (visual) with typed word, starting this line and confirming result by result
-- starts a search from this line . to last line (end of file) $ (Befehl :.,$s) und danach | das gleiche nochmal vom anfang bis zur aktuell line (damit die suche wrapped)
vim.keymap.set("n", "<leader>s", [[:.,$s/\<<C-r><C-w>\>//gc|1,''-&&<left><left><left><left><left><left><left><left><left><left><left>]])
vim.keymap.set("v", "<leader>s", [[y:.,$s/<c-r>"//gc|1,''-&&<left><left><left><left><left><left><left><left><left><left><left>]])
-- Replace word under cursor (normal) or selection (visual) with typed word in whole file
vim.keymap.set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>//gI<left><left><left>]])
vim.keymap.set("v", "<leader>S", [[y:%s/<c-r>"//gI<left><left><left>]])

-- add :noh to esc to unselect highlighted text
vim.keymap.set("n", "<esc>", [[:noh<return><esc>]]);

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- remap arrows
vim.keymap.set("n", "<Up>", "<Nop>")
vim.keymap.set("n", "<Down>", "<Nop>")
vim.keymap.set("n", "<Left>", "<Nop>")
vim.keymap.set("n", "<Right>", "<Nop>")

-- gitsigns
-- Git Preview Inline Change of line
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
-- Git Blame Line Toggle 
vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})
-- Git Diff current file
vim.keymap.set("n", "<leader>gd", ":Gvdiffsplit<CR>", {})


-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })


-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})


