multiHandler = {}

local screenWidth, screenHeight = love.graphics.getDimensions()

keys 							= {}
keys.left 						= {state = 0, held = 0}
keys.right 						= {state = 0, held = 0}

-----------------------------------------------------------------------------------------

function multiHandler.getScreenWidth()

	return screenWidth

end

-----------------------------------------------------------------------------------------

function multiHandler.getScreenHeight()

	return screenHeight

end

-----------------------------------------------------------------------------------------

function multiHandler.stateSwitch() 

end








-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----Misc Handlers-----
-----------------------------------------------------------------------------------------


--function love.resize(w,h)
--end

-----------------------------------------------------------------------------------------

function love.filedropped(file)
end

-----------------------------------------------------------------------------------------

function love.directorydropped(path)
end

-----------------------------------------------------------------------------------------

function love.quit()
	return false --abort flag, true prevents quit
end


-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----Input Handlers-----
-----------------------------------------------------------------------------------------


function love.mousepressed(x, y, button, istouch)
end

-----------------------------------------------------------------------------------------

function love.mousereleased(x, y, button, istouch)

end

-----------------------------------------------------------------------------------------

function love.mousefocus(focus)
end

-----------------------------------------------------------------------------------------

function love.mousemoved(x, y, dx, dy, istouch)
end

-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------
--timed keys--
love.keypressed = function(key) -- gets called only when it is pressed
	if keys[key] then
		keys[key].state = 1 -- Pressed.
		keys[key].held  = 0 -- Clear the time it was held for previously.
	end
end

love.keyreleased = function(key)
	if keys[key] then
		keys[key].state = 0
	end
end







-----------------------------------------------------------------------------------------

function love.keyreleased(key,scancode)

end

-----------------------------------------------------------------------------------------

function love.textinput(text)
end
