taskbar = {}


-----------------------------------------------------------------------------------------

function taskbar.update(dt)
end

-----------------------------------------------------------------------------------------

function taskbar.draw()
	printOS()

	printState()

end




-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------

function printOS()

	love.graphics.setColor(4,4,2,180)
	love.graphics.rectangle("fill", 0, mH.getScreenHeight()-windows:getHeight(), mH.getScreenWidth(), windows:getHeight())
	love.graphics.setColor(FULL)
	love.graphics.draw(windows, 0, mH.getScreenHeight(), 0, 1, 1, 0, windows:getHeight())
	love.graphics.setFont(largeFont)
	love.graphics.printf("DogeOS", mH.getScreenWidth()-200, mH.getScreenHeight()-(1/2)*windows:getHeight(), wrapLimit, "left", 0, 1, 1, 0, largeFont:getHeight()/2)
	love.graphics.setFont(medFont)
	love.graphics.printf(os.date("%I:%M %p"), mH.getScreenWidth(), mH.getScreenHeight()-windows:getHeight(), wrapLimit, "left", 0, 1, 1, medFont:getWidth("00:00 PM "), -5)
	love.graphics.printf(os.date("%d/%m/%y"), mH.getScreenWidth(), mH.getScreenHeight()-(1/2)*windows:getHeight(), wrapLimit, "left", 0, 1, 1, medFont:getWidth("DD/MM/YY"), -5)
end

-----------------------------------------------------------------------------------------

function printState()

	if state == DOGEFIELD then

		love.graphics.setColor(128,128,160,60) --64 64 80
		love.graphics.rectangle("fill", windows:getWidth() + 50, mH.getScreenHeight()-windows:getHeight(), doge:getWidth() * (.5*windows:getHeight()/doge:getHeight()) +20, windows:getHeight())

		if dF.getColorized() then
			love.graphics.setColor(RRED)
		else
			love.graphics.setColor(GREN)
		end

		love.graphics.rectangle("fill", windows:getWidth() + 50, mH.getScreenHeight()-3, doge:getWidth() * (.5*windows:getHeight()/doge:getHeight()) +20, 3)

		
	elseif state == RICKROLL then

		love.graphics.setColor(128,128,160,60) --64 64 80
		love.graphics.rectangle("fill", windows:getWidth(), mH.getScreenHeight()-windows:getHeight(), steam:getWidth()+20, windows:getHeight())

		love.graphics.setColor(GREN)
		love.graphics.rectangle("fill", windows:getWidth(), mH.getScreenHeight()-3, steam:getWidth()+20, 3)

	end


	love.graphics.setColor(FULL)
	love.graphics.draw(steam, windows:getWidth() + 10, mH.getScreenHeight()-windows:getHeight()/2, 0, 1, 1, 0, steam:getHeight()/2)

	love.graphics.draw(doge, windows:getWidth() + 60, mH.getScreenHeight()-windows:getHeight()/2, 0, .5*windows:getHeight()/doge:getHeight(), .5*windows:getHeight()/doge:getHeight(), 0, doge:getHeight()/2)

end