dogeField = {}

local instances 		= { }
local counter 			= 19
local spawnDelay 		= 20
local dimRate 			= 60
local colorized			= false

-----------------------------------------------------------------------------------------

function dogeField.update(dt)

	if startField then 
			counter = counter + 200*dt 
	end

	if counter >= spawnDelay then 

		dog 			= {}
		dog.x 			= love.math.random(mH.getScreenWidth())
		dog.y 			= love.math.random(mH.getScreenHeight())
		dog.rot 		= 0
		dog.direction 	= love.math.random(-1,1)
		dog.scale 		= 0
		dog.growthSpeed = love.math.random(20,40)
		dog.dim 		= 255

		if colorized then
			dog.R 		= love.math.random(25,255)
			dog.G 		= love.math.random(25,255)
			dog.B 		= love.math.random(00,200)
		else
			dog.R 		= 255
			dog.G 		= 255
			dog.B 		= 255
		end


		table.insert(instances,dog)
		counter = 0
	end


	for i, dog in ipairs(instances)do
		
		instances[i].rot = instances[i].rot + (instances[i].direction*10*dt) 
		instances[i].scale = instances[i].scale + dt/instances[i].growthSpeed

		if instances[i].scale >= .25 then
			instances[i].dim = instances[i].dim - dimRate*dt
		end

		if instances[i].dim <=20 then
			table.remove(instances, i)
		end
	end

	giant.update(dt)

end

-----------------------------------------------------------------------------------------

function dogeField.draw()

	for i, dog in ipairs(instances) do
		love.graphics.setColor(255, 237, 193, instances[i].dim)
		love.graphics.draw(highlight, instances[i].x, instances[i].y, instances[i].rot, instances[i].scale +.006, instances[i].scale +.006, doge:getWidth()/2, doge:getHeight()/2)
		
		love.graphics.setColor(instances[i].R, instances[i].G, instances[i].B, instances[i].dim)
		love.graphics.draw(doge, instances[i].x, instances[i].y, instances[i].rot, instances[i].scale, instances[i].scale, doge:getWidth()/2, doge:getHeight()/2)
	end

	giant.draw()

end

-----------------------------------------------------------------------------------------

function dogeField.clear()

	for i, dog in ipairs(instances) do
		instances[i] = nil
	end



end

-----------------------------------------------------------------------------------------

function dogeField.toggle()

	colorized = not colorized
	dF.clear()
	startField = true


	giant.toggle()
	loops.toggle()

end

-----------------------------------------------------------------------------------------

function dogeField.getColorized()
	return colorized
end