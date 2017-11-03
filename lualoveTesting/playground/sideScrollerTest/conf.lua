-- Configuration
function love.conf(t)
	t.title = "Side Scroller Test" -- The title of the window the game is in (string)
	t.version = "0.10.0"         -- The LÖVE version this game was made for (string)
	t.window.width = 900        -- size
	t.window.height = 600

	-- For Windows debugging
	t.console = true
end