-- Number
vim.opt.number = true
vim.opt.relativenumber = true

-- Encoding
vim.opt.encoding = "utf-8"

-- GuiFont
vim.opt.guifont = "FiraCode Nerd Font Mono 17"

-- Screen center
vim.opt.scrolloff = 999

-- Mouse Turning on 
vim.opt.mouse = "a"
vim.opt.mousefocus = true

-- Basic tab config
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = false
vim.opt.shiftwidth = 4

vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 6

vim.filetype.add({
	extension = {
		slint = "slint",
	}
})

vim.lsp.inlay_hint.enable()
