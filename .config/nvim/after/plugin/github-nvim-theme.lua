local status, theme = pcall(require, "github-theme")
if not status then return end

local themeMode = 'dimmed'
local current_hour = os.date('*t').hour

-- if current_hour > 17 then
  -- themeMode = 'dimmed'
-- else
  -- themeMode = 'light_colorblind'
-- end

-- theme.setup({})

