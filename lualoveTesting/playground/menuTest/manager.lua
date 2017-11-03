 manager = {}

-----------------------------------------------------------------------------------------






 function love.mousepressed(x, y, button, istouch)

-----------------------------------------------------------------------------------------
 	if state == STARTUP then

	   if button == 1 then 

		--overlays

	      if x >= 0 and x <= 150 and y >= 0 and y <= 100 then
	      		if overlay[1]==1 then
	      		    menu.start()
	      		end
	      end
	    -----------



	      
	      if x >= 180 and x <= 620 and y >= 100 and y <= 500 then

	      	if imgstate == 0 then imgstate = 1
	      	else imgstate = 0 end

	      end


		end

	   

	   	if button == 2 then 
	   		overlays.set(false, false, 1) 
		end

	   	

	end
-----------------------------------------------------------------------------------------









end