ore = {}

-------------------------
--Controlls the (?)game--
-------------------------


local timerStart 												--calculates time starting from an unspecified point
local timer 					= 0 							--local timer
local startDraw					= false							--flag that prevents draw
local fadeIn					= 0								--fade in from 0 to 255 (transparency)

rockW							= 40							--percent of screen the rock takes up (width)
rockH							= 22.5							--percent of screen the rock takes up (height)

rrockW							= 40							--percent of screen the rock takes up when released (width)
rrockH							= 22.5							--percent of screen the rock takes up when released (height)

prockW							= 45							--percent or screen the rock takes up when pressed (width)
prockH							= 25							--percent of screen the rock takes up when pressed (height)

-----------------------------------------------------------------------------------------

function ore.start()											--function called to switch into update mode

	state = ORE													--set state to menu, to run menu.update and .draw
	
	love.graphics.setBackgroundColor(colorDBLUE, 255)			--set default background color

	timerStart = love.timer.getTime() 							--love.timer.getTime() starts keeping time at an unspecified point, so we markt he start
	love.graphics.setFont(text_font)


end

-----------------------------------------------------------------------------------------


function ore.update(dt)

	timer = (love.timer.getTime() - timerStart)					--calculate timer based on starting point

	if fadeIn < 255 then
		fadeIn = fadeIn + timer +3
	end

	if fadeIn > 255 then
		startDraw = true 
	end


end

-----------------------------------------------------------------------------------------


function ore.draw(dt)

	if startDraw == false then

		love.graphics.setColor(102, 162, 255, fadeIn)			--color of image display

		love.graphics.draw(rock, pH.getW(35), pH.getH(50), rot, pH.cW(rock, 40), pH.cH(rock, 22.5), rock:getWidth()/2, rock:getHeight()/2 )
	end


	if startDraw == true then

		love.graphics.setColor(colorLBLUE, 255)					--color of image display

		love.graphics.draw(rock, pH.getW(35), pH.getH(50), rot, pH.cW(rock, rockW), pH.cH(rock, rockH), rock:getWidth()/2, rock:getHeight()/2 )


	end









end