local bufnr = vim.api.nvim_get_current_buf()

vim.g.rustaceanvim = {
  -- Plugin configuration
  tools = {
  },
  -- LSP configuration
  server = {
    on_attach = function(client, bufnr)
      -- you can also put keymaps in here
    end,
    default_settings = {
      -- rust-analyzer language server configuration
      ['rust-analyzer'] = {
		  cargo = {
			allFeatures = true, loadOutDirsFromCheck = true,
			runBuildScripts = true,
		},
		-- Add clippy lints for Rust.
		checkOnSave = {
			allFeatures = true,
			command = "clippy",
		},
      },
    },
  },
  -- DAP configuration
  dap = {
  },
}

vim.keymap.set("n", "<leader>rr", 
  function()
	vim.cmd.RustLsp('runnables')
  end,
  { silent = true, buffer = bufnr }
)

vim.keymap.set("n", "<leader>rd", 
  function()
    vim.cmd.RustLsp({ 'renderDiagnostic', 'current' })
  end,
  { silent = true, buffer = bufnr }
)
