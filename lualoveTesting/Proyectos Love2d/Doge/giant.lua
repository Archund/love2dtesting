giant = {}

local fadeIn			= 0
local glass 			= false

-----------------------------------------------------------------------------------------

function giant.update(dt)

	if timer.getTime("Buildup") > 3 and timer.getTime("Buildup") < 23 then
		fadeIn = fadeIn +14*dt
	end

end

-----------------------------------------------------------------------------------------

function giant.draw()

	--love.graphics.setColor(LBLU)
	--love.graphics.draw(highlight, love.graphics.getWidth()/2, love.graphics.getHeight()/2-10, 0, 1.2, 1.2, doge:getWidth()/2, doge:getHeight()/2)

	if glass == false then
		love.graphics.setColor(255,255,255,fadeIn)
		love.graphics.draw(doge, mH.getScreenWidth()/2, mH.getScreenHeight()/2, 0, 1, 1, doge:getWidth()/2, doge:getHeight()/2)
	else
		love.graphics.setColor(love.math.random(100,255),love.math.random(0,255),love.math.random(0,150),255)
		love.graphics.draw(doge, mH.getScreenWidth()/2, mH.getScreenHeight()/2, 0, 1, 1, doge:getWidth()/2, doge:getHeight()/2)
		love.graphics.setColor(FULL)
		love.graphics.draw(glasses, mH.getScreenWidth()/2 + 10, mH.getScreenHeight()/2 +15, 0, 1, 1, glasses:getWidth()/2, glasses:getHeight(0/2))

	end

end

-----------------------------------------------------------------------------------------

function giant.toggle() 

	glass = not glass
	fadeIn = 255
	timer.delTimer("Buildup")

end
