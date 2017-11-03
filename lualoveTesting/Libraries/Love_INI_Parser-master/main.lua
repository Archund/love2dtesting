LIP = require("LIP")

function love.load()

	data = {

		meta = {
			size = 3
		},

		array = {
			1, 2, 3
		}
	}
end

function love.draw()

	LIP.save('savedata.txt', data)
	love.graphics.printf("wow", 10,10, 40, "left")
	love.event.quit()
	

end