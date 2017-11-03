---------------------------------------------------
--Contains the mouse and touch callback functions--
---------------------------------------------------



-----------------------------------------------------------------------------------------






 function love.mousepressed(x, y, button, istouch)


 	if state == STARTUP then 									--Skips the startup sequence

		if button == 1 then 

			ore.start()

		end


	end
-----------------------------------------------------------------------------------------

	if state == ORE then 										--Calculates starting and ending x and y values of the image's position based
		--														--on the percentages of the screen it takes up , +/- a correction value because  
		--														--the image is square. This is used for detecting when the image is clicked

		if button == 1 then

			if   x >= ( pH.getW(35)+ pH.getW(7) - (1/2)*pH.getW(rockW) )   and   x <= ( pH.getW(35)- pH.getW(7) + (1/2)*pH.getW(rockW) ) 
			and  y >=  (pH.getH(50)- pH.getH(3) - (1/2)*pH.getH(rockH) )   and   y <= ( pH.getH(75)+ pH.getH(3) - (1/2)*pH.getH(rockH) )
			then

				rockW = prockW			
				rockH = prockH			

			end

		end

	end



end

-----------------------------------------------------------------------------------------


function love.mousereleased( x, y, button, istouch )



	if state == ORE then 										--Scince we only want to know when the mouse was realased, we dont need coordinates

		if button == 1 then

			rockW = rrockW			
			rockH = rrockH			

		end
	end


end


-----------------------------------------------------------------------------------------



function love.touchpressed( id, x, y, dx, dy, pressure )

	if state == STARTUP then 									--Skips the startup sequence

		if pressure >= 0 then 

			ore.start()

		end

	end


	
	if state == ORE then 										--Calculates starting and ending x and y values of the image's position based 
		--														--on the percentages of the screen it takes up , +/- a correction value because  
		--														--the image is square. This is used for detecting when the image is touched

		if   x >= ( pH.getW(35)+ pH.getW(7) - (1/2)*pH.getW(rockW) )   and   x <= ( pH.getW(35)- pH.getW(7) + (1/2)*pH.getW(rockW) ) 
		and  y >=  (pH.getH(50)- pH.getH(3) - (1/2)*pH.getH(rockH) )   and   y <= ( pH.getH(75)+ pH.getH(3) - (1/2)*pH.getH(rockH) )
		then

			rockW = prockW			--40
			rockH = prockH			--22.5

		end

	end

end


-----------------------------------------------------------------------------------------




function love.touchreleased( id, x, y, dx, dy, pressure )


	if state == ORE then 										--Scince we only want to know when the touch was realased, we dont need coordinates

		rockW = rrockW			
		rockH = rrockH		


		if   x >= ( pH.getW(35)+ pH.getW(7) - (1/2)*pH.getW(rockW) )   and   x <= ( pH.getW(35)- pH.getW(7) + (1/2)*pH.getW(rockW) ) 
		and  y >=  (pH.getH(50)- pH.getH(3) - (1/2)*pH.getH(rockH) )   and   y <= ( pH.getH(75)+ pH.getH(3) - (1/2)*pH.getH(rockH) )
		then
			printer.next()										-- only prints if the release was on the button

		end

	end


end




