local status, staline = pcall(require, "staline")
if not status then return end

local mode_colors_dark = {
	n  = "#181a23",
		i  = "#181a23",
		ic = "#181a23",
		c  = "#181a23",
		v  = "#181a23" 
}

local mode_colors_light = {
	i = "#d4be98",
		n = "#84a598",
		c = "#8fbf7f",
		ic = '#79b4b7',
		v = "#fc802d",
}

local fg = '#fed'

local mode_colors = mode_colors_light

local current_hour = os.date('*t').hour
if current_hour > 17 then
  mode_colors = mode_colors_dark
	fg = '#986fec'
else
	fg = '#fed'
  mode_colors = mode_colors_light
end



staline.setup {
	sections = {
		left = {
			' ', 'right_sep_double', '-mode', 'left_sep_double', ' ',
			'right_sep', '-file_name', 'left_sep', ' ',
			'right_sep_double', '-branch', 'left_sep_double', ' ',
		},
		mid  = {'lsp'},
		right= {
			'right_sep', '-cool_symbol', 'left_sep', ' ',
			'right_sep', '- ', '-lsp_name', '- ', 'left_sep',
			'right_sep_double', '-line_column', 'left_sep_double', ' ',
		}
	},

	defaults={
		fg = "#986fec",
		cool_symbol = "  ",
		left_separator = "",
		right_separator = "",
		true_colors = true,
		line_column = "[%l:%c] 並%p%% ",
		font_active = "bold"
	},
mode_colors = mode_colors,	
}


