-- function ColorMyPencils(color)
	-- color = color or "tokyonight"
	require("tokyonight").setup({
		style = "night",
		-- transparent = true,
		-- styles = {
		-- 	sidebars = "transparent",
		-- 	floats = "transparent"
		-- },
		-- on_highlights = function(hl, colors)
		-- 	hl.CursorLineNr = {
		-- 		fg = colors.yellow
		-- 	}
		-- end
		on_colors = function(colors)
			colors.bg = "#000000"
		end
	})
	vim.cmd.colorscheme("tokyonight-night")

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})

-- end

