require("telescope").setup({
	extensions = {
		["pathogen"] = {
			attach_mappings = function(map, actions)
				map("i", "<C-o>", actions.proceed_with_parent_dir)
				map("i", "<C-l>", actions.revert_back_last_dir)
				map("i", "<C-b>", actions.change_working_directory)
				map("i", "<C-g>g", actions.grep_in_result)
				map("i", "<C-g>i", actions.invert_grep_in_result)
			end,
			-- remove below if you want to enable it
			use_last_search_for_live_grep = false,
			prompt_prefix_length = 100
		}
	}
})

require("telescope").load_extension("pathogen")
