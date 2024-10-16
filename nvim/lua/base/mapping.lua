vim.g.mapleader = " "

local goto_preview = require('goto-preview')

local function TelescopeWithoutIns(command)
	vim.cmd(command)
	vim.schedule( function ()
		vim.cmd("stopinsert")
	end )
end

local TelescopeWrapper = function(func, command)
	local args = command
	return function()
		func(args)
	end
end

vim.keymap.set("n", "<leader>ra", vim.lsp.buf.rename)

vim.keymap.set("n", "gpd", goto_preview.goto_preview_definition, {noremap=true})
vim.keymap.set("n", "gpt", goto_preview.goto_preview_type_definition, {noremap=true})
vim.keymap.set("n", "gpi", goto_preview.goto_preview_implementation, {noremap=true})
vim.keymap.set("n", "gpr", goto_preview.goto_preview_references, {noremap=true})

local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})
vim.keymap.set("n", "<leader>fw", telescope_builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, {})
vim.keymap.set("n", "<leader>td", telescope_builtin.diagnostics, {})
vim.keymap.set("n", "<leader>gs", telescope_builtin.git_status, {})
vim.keymap.set("n", "<leader>gS", telescope_builtin.git_stash, {})
vim.keymap.set("n", "<leader>fm", telescope_builtin.marks, {})
vim.keymap.set("n", "<leader>ss", telescope_builtin.spell_suggest, {})
vim.keymap.set("n", "<leader>fh", telescope_builtin.current_buffer_fuzzy_find, {})

vim.keymap.set('n', '<leader>sd', "<CR>:Telescope pathogen<CR>", {})
vim.keymap.set('n', '<leader>sf', "<CR>:Telescope pathogen find_files<CR>", {})

vim.keymap.set("n", "<leader>so", "<CR>:Outline<CR>", {})
vim.keymap.set("n", "<leader>n", "<CR>:Navbuddy<CR>", {})

-- Tabs
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>bn', ':BufferLineMoveNext<CR>')
vim.keymap.set('n', '<leader>bp', ':BufferLineMovePrev<CR>')

vim.keymap.set('n', '<leader>bl', ':BufferLinePick<CR>')
vim.keymap.set('n', '<leader>q', ':BufDel<CR>')

local actions_prew = require("actions-preview")
vim.keymap.set("n", "<leader>ap", actions_prew.code_actions)

vim.keymap.set("n", "<leader>xx", "<CR>:Trouble diagnostics toggle<CR>", {})

vim.keymap.set("n", "<leader>O", "<CR>:Neotree show toggle<CR>", {})

vim.keymap.set("n", "<leader>tt", TelescopeWrapper(TelescopeWithoutIns, "TodoTelescope"), {})
vim.keymap.set("n", "]t", function() todo_comments.jump_next() end, { desc = "Next todo comment" })
vim.keymap.set("n", "[t", function() todo_comments.jump_prev() end, { desc = "Previous todo comment" })
