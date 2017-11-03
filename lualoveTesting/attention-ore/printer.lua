printer = {}

-------------------------------------
--prints strings a letter at a time--
-------------------------------------

--typer
local sentText 					= "Hello" 
local printedText 				= ""
local typerTimerMax				= .08
local typeTimer 				= .08
local typePosition 				= 0

--values

local printing					= false

local stringArray				= { nil, "dils", "loooooooooooooooooooong text",
								"Do these minerals make me look fat?", "I have a Masters in Underwater Basket Weaving",
								"I'm out of ideas", "short text", "N-notice me senpai...", "8", "9", "10", "11", "12","13","14","15"}


local index						= 0

local numberStrings				= 15




-----------------------------------------------------------------------------------------


function printer.update(dt)

	if printing == true then


		if typePosition <= string.len(sentText) then

		    		typeTimer = typeTimer - dt

		   			if typeTimer <= 0 then
		       			typeTimer = typerTimerMax
		       			typePosition = typePosition + 1

		       			printedText = string.sub(sentText,0,typePosition)
		    		end

		end


		if typePosition == string.len(sentText) then

			printing = false

			beep:stop()
		end


	end




end


-----------------------------------------------------------------------------------------


function printer.next()

	if printing == false then

		index = love.math.random(2, numberStrings)

		sentText = stringArray[index]

		typePosition = 0

		printing = true

		beep:play()

		


	end


end



function printer.draw()

	love.graphics.setColor(colorLBLUE, 255)
	love.graphics.printf( printedText, pH.getW(60), pH.getH(75), pH.getH(50), "left", rot, 1, 1)

end

-----------------------------------------------------------------------------------------
