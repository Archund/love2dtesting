overlays = {}

overlay = { 0, 0, 0}							--enable 3 overlays

-----------------------------------------------------------------------------------------

function overlays.set(setOn, setZero, number)

	if setOn == true and setZero == false then
		overlay[number] = 1
	end

	if setZero == true and setOn == false then
		overlay[number] = 0
	end

	if setZero == false and setOn == false then

		if overlay[number] == 0 then
			overlay[number] = 1
		else

			if overlay[number] == 1 then
				overlay[number] = 0
			end

		end


	end


end


-----------------------------------------------------------------------------------------

function overlays.update(dt)

end


-----------------------------------------------------------------------------------------

function overlays.draw(dt)

	if overlay[1] == 1 then
		love.graphics.setColor(100, 200, 200, 255)
		love.graphics.rectangle("fill", 0, 0, 200, 100)
		love.graphics.setColor(0, 0, 0, 255)
		love.graphics.printf("Overlay", 2, 2, 400, "left", 0, 1, 1)
	end

end


-----------------------------------------------------------------------------------------

