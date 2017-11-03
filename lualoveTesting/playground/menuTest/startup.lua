startup = {}

local timerStart 												--calculates time starting from an unspecified point
local timer 					= 0 							--local timer
local startDraw					= false
imgstate 					= 0


-----------------------------------------------------------------------------------------


function startup.start()										--function called to switch into update mode

	state = STARTUP										--set state to startup, to run startup.update and .draw
	love.graphics.setBackgroundColor(250, 100, 130, 255)

	timerStart = love.timer.getTime() 

end


-----------------------------------------------------------------------------------------

function startup.update(dt)

	timer = (love.timer.getTime() - timerStart)					--calculate timer

	if timer >= 2 then

		startDraw = true

	end



end


-----------------------------------------------------------------------------------------
function startup.draw()

	if startDraw == true then

		love.graphics.setColor(255, 255, 255, 255)
		if imgstate == 0 then
			love.graphics.draw(faceA, 180, 100, 0, 1, 1)
		else 
			love.graphics.draw(faceB, 180, 100, 0, 1, 1)
		end


	end

end


