-- neo tree config

vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

-- If you want icons for diagnostic errors, you'll need to define them somewhere:
vim.fn.sign_define("DiagnosticSignError",
{text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn",
{text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo",
{text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint",
{text = "󰌵", texthl = "DiagnosticSignHint"})
-- NOTE: this is changed from v1.x, which used the old style of highlight groups
-- in the form "LspDiagnosticsSignWarning"

require("neo-tree").setup({
	close_if_last_window = true,
	filesystem = {
		filtered_items = {
			  visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
			  hide_dotfiles = false,
			  hide_gitignored = false,
		},
		follow_current_file = {
            enabled = true,
		}
	},
	window = {
		position = "left",
		width = 40,
	},
})

