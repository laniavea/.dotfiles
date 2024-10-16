local mocha = require("catppuccin.palettes").get_palette "mocha"

require("bufferline").setup {
    options = {
		highlights = require("catppuccin.groups.integrations.bufferline").get {
			styles = { "italic", "bold" },
			custom = {
				all = {
					fill = {
						bg = "#000000"
					},
				},
				mocha = {
					background = { fg = mocha.text },
				},
				latte = {
					background = { fg = "#000000" },
				},
			},
		},
		close_command = ":BufDel",
        buffer_close_icon = '',
        mode = 'buffers',
		numbers = function(opts)
			return string.format('%s%s', opts.ordinal, opts.raise(opts.id))
		end,
        offsets = {
            {
                filetype = "neo-tree",
                text = "File Explorer",
                separator = true,
                padding = 1
            }
        },
        diagnostics = "nvim_lsp",
        indicator = {
            icon = '  ', -- this should be omitted if indicator style is not 'icon'
            style = 'icon'
        },
        separator_style = "slope"
    }
}
