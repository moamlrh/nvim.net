local bufferline = require('bufferline')

bufferline.setup {
	options = {
		numbers = "ordinal",
		highlight = { undercurl = true, sp = "green" },
		indicator = {
			icon = '▎', -- this should be omitted if indicator style is not 'icon'
			style = 'underline',
		},
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				separator = true
			}
		},
		separator_style = "think",
		hover = {
			enabled = true,
			delay = 200,
			reveal = { 'close' }
		},
		style_preset = bufferline.style_preset.no_italic,
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			-- return "("..count..")"
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count
		end,
	}
}
