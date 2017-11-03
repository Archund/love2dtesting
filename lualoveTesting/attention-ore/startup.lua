startup = {}

--------------------
--startup sequence--
--------------------


local timerStart 												--calculates time starting from an unspecified point
local timer 					= 0 							--local timer
local startDraw					= false							--flag that prevents draw
local fadeIn					= 0


-----------------------------------------------------------------------------------------


function startup.start()										--function called to switch into update mode

	state = STARTUP												--set state to startup, to run startup.update and .draw
	love.graphics.setBackgroundColor(colorLBLUE, 255)			--set default background color

	timerStart = love.timer.getTime() 

end


-----------------------------------------------------------------------------------------

function startup.update(dt)

	timer = (love.timer.getTime() - timerStart)					--calculate timer

	if timer >= 2 then
		startDraw = true

		if fadeIn < 255 then 
			fadeIn = fadeIn + timer/3
		end

	end

	if timer >= 7 then

		if fadeIn > 0 then
			fadeIn = fadeIn - timer
		end

	end

	if timer >= 8.5 then
		ore.start()
	end


end


-----------------------------------------------------------------------------------------
function startup.draw()

	if startDraw == true then

		love.graphics.setColor(255, 255, 255, fadeIn)			--color of image display

		love.graphics.draw(logo, pH.getW(40), pH.getH(50), rot, pH.cW(logo, 100), pH.cH(logo, 55), logo:getWidth()/2, logo:getHeight()/2 )
		


	end

end

-----------------------------------------------------------------------------------------
