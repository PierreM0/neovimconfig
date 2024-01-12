-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })



-- See vartype
vim.api.nvim_set_keymap('n', '<Leader>k', '<cmd>lua vim.lsp.buf.hover()<CR>', {})

-- neogen
vim.api.nvim_set_keymap("n", "<Leader>nf", "<cmd>lua require('neogen').generate()<CR>", { noremap = true, silent = true })

--nvim tree
vim.keymap.set('n', 'tff', "<cmd>NvimTreeFindFileToggle<CR>", { desc = 'Open file tree' })

--undotree
vim.keymap.set('n', "<leader>ut", "<cmd>lua require('undotree').toggle()<CR>", { desc = 'Open file tree' })
