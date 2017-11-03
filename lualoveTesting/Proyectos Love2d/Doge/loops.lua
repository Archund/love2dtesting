loops = {}

local current 				= 0

-----------------------------------------------------------------------------------------

function loops.play(num)

	if current~=num then
		love.audio.stop()
		current = num

		if num == 1 then
			loop1:play()
		elseif num == 2 then
			loop2:play()
		end

	end


end

-----------------------------------------------------------------------------------------

function loops.toggle()

	if current == 0 then
		current = 2
		loop2:play()
	elseif current == 1 then
		love.audio.stop()
		current = 2
		loop2:play()
	elseif current == 2 then
		love.audio.stop()
		current = 1
		loop1:play()
	end

end

-----------------------------------------------------------------------------------------
