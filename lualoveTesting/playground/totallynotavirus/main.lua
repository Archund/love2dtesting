-- set variables
-----------------------------------------------------------------------------



--title_font 			= love.graphics.newFont("assets/BM_Space.TTF",64)
--text_font 			= love.graphics.newFont("assets/BM_Space.TTF",32)

--sountest			= love.audio.newSource("assets/space.mp3")

stateTimer			= 0
globalTimer			= 0
miscTimer1			= 0

miscFlag1			= false

miscVar1			= 0
miscVar2			= 0

rad 				= 0

--color values
--bgColor 			= {12, 136, 178, 255}
--red 				= {255, 91, 79, 255}
--lBlue				= {187, 250, 250, 255}



--typer
sentText 			= "Merry Christmas" 
printedText 		= ""

typerTimerMax		= .15
typeTimer 			= .15

typePosition 		= 0



-----------------------------------------------------------------------------
-----------------------------------------------------------------------------


function love.load(arg)

	title_font 			= love.graphics.newFont("assets/BM_Space.TTF",55)
	text_font 			= love.graphics.newFont("assets/BM_Space.TTF",28)
	presentImg			= love.graphics.newImage("assets/present.png")
	rays 				= love.graphics.newImage("assets/rays.png")

	--states
	state 				= 0x00


end


-----------------------------------------------------------------------------
-----------------------------------------------------------------------------




function love.update(dt)

	--state handling
	if stateTimer >= 3.4 then
		state = 0x01
	end


	if state == 0x00 then
		love.graphics.setBackgroundColor(187, 250, 250, 255)
		

	elseif state == 0x01 then

		love.graphics.setBackgroundColor(12, 136, 178, 255)
	    
	end



	--decrease/increase timers
	stateTimer = stateTimer + dt 
	globalTimer = globalTimer + dt

	
	

	




	--run states

	if state == 0x00 then

		rad = rad + 14*globalTimer - 28*(dt/dt) 

		if (globalTimer >= 1.2 and miscFlag1 == false) then

		    miscTimer1 = miscTimer1 + 16*globalTimer - 45*(dt/dt)

		    if miscTimer1 <= -1030 then

		    	miscFlag1 = true 

		    end

		end


		if globalTimer >= 2.4 then

			if miscVar1 <= 180 then

				for i=0,200,5 do

					miscVar1 = miscVar1 + dt*7
				end

			end

		end



	elseif state == 0x01 then

		if typePosition <= string.len(sentText) then
    		typeTimer = typeTimer - dt

   			if typeTimer <= 0 then
       			typeTimer = typerTimerMax
       			typePosition = typePosition + 1

       			printedText = string.sub(sentText,0,typePosition)
    		end

		end


		if miscVar2 <= 1 then

			miscVar2 = miscVar2 + dt

		end
	



	end





end



-----------------------------------------------------------------------------
-----------------------------------------------------------------------------



function love.draw(dt)

	--constant? overlay

	if state == 0x00 then
		love.graphics.setColor(255, 91, 79, 255)
		love.graphics.circle("fill", 20, 20, rad, 2000)
		love.graphics.setColor(12, 136, 178, 255)
		love.graphics.circle("fill", 845, 25, miscTimer1, 2000)

		love.graphics.setColor(0, 0, 0, 80)
		love.graphics.circle("fill", 0, 0, miscVar1, 100)
	end

	if state == 0x01 then

		love.graphics.setColor(0, 0, 0, 80)
		love.graphics.circle("fill", 0, 0, miscVar1, 100)
		love.graphics.setFont(text_font)
		love.graphics.setColor(187, 250, 250, 255)
		love.graphics.printf( printedText, 240, 80, 1000, "left", 0, 1.5, 1.5, 0, 0, 0, 0)
		love.graphics.draw(presentImg, 325, 225, 0, miscVar2, miscVar2)
		love.graphics.draw(rays, 325, 225, dt)
		
		--love.graphics.print(vendor, 325, 400)


	elseif cond then
	    
	end

	--non-constant overlay




end

-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
