multiHandler = {}

local screenWidth, screenHeight = love.graphics.getDimensions()

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

	love.audio.stop()

	if state == DOGEFIELD then
		state = RICKROLL
		rickroll.init()
	elseif state == RICKROLL then
		state = DOGEFIELD
		dogeField.toggle()
		dogeField.toggle()
	end

end








-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----Misc Handlers-----
-----------------------------------------------------------------------------------------


function love.resize(w,h)
	screenWidth = w 
	screenHeight = h
end

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
	--windows:getWidth() + 50, mH.getScreenHeight()-windows:getHeight(), doge:getWidth() * (.5*windows:getHeight()/doge:getHeight()) +20, 

	if y > mH.getScreenHeight()-windows:getHeight() and y < mH.getScreenHeight() then

		if x > windows:getWidth() + 50 and x < (windows:getWidth() + 50) + (doge:getWidth() * (.5*windows:getHeight()/doge:getHeight()) +20) then

			if state ~= DOGEFIELD then

				mH.stateSwitch()
			elseif true then
				dF.toggle()
			end

			

			--windows:getWidth(), mH.getScreenHeight()-windows:getHeight(), steam:getWidth()+20, windows:getHeight()
		elseif x > windows:getWidth() and x < windows:getWidth() + steam:getWidth()+20 then

			if state ~= RICKROLL then
				mH.stateSwitch()
			end


		end

	end

end

-----------------------------------------------------------------------------------------

function love.mousefocus(focus)
end

-----------------------------------------------------------------------------------------

function love.mousemoved(x, y, dx, dy, istouch)
end

-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------

function love.keypressed(key, scancode, isrepeat)
end

-----------------------------------------------------------------------------------------

function love.keyreleased(key,scancode)

	if key == "lshift" then
		dF.toggle()
	elseif key == "return" then
		multiHandler.stateSwitch()
	end

end

-----------------------------------------------------------------------------------------

function love.textinput(text)
end
