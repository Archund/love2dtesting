--Configuration file

function love.conf(t)
	t.title = "Totally not a virus" -- The title of the window the game is in (string)
	t.version = "0.10.0"         -- The LÖVE version this game was made for (string)
	t.window.width = 900        -- size
	t.window.height = 600
	t.window.borderless = false

	t.window.icon = "assets/download.png"

	-- Disable unused modules
	t.modules.joystick = false
    t.modules.physics = false

	-- For Windows debugging
	t.console = true
end