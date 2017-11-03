pong = {}

function pong.draw()

	love.graphics.setColor(BLUE)
  
  	love.graphics.polygon("fill", ground.body:getWorldPoints(ground.shape:getPoints()) )
  	love.graphics.polygon("fill", roof.body:getWorldPoints(roof.shape:getPoints()) )

	love.graphics.rectangle("fill", 255, 80, 1, 96)


  	love.graphics.setColor(PINK)


  	love.graphics.circle("fill", ball.body:getX(), ball.body:getY(), ball.shape:getRadius(), 12)

  	love.graphics.polygon("fill", rwall.body:getWorldPoints(rwall.shape:getPoints()) )
  	love.graphics.polygon("fill", lwall.body:getWorldPoints(lwall.shape:getPoints()) )

end


function pong.menu()

	love.graphics.setNewFont(8)

	love.graphics.setColor(PINK)
	love.graphics.printf("Not Pong", 80, 112, 256, "left", 0, 4, 4)

	love.graphics.setColor(BLUE)
	love.graphics.printf("Press space to start", 96, 160, 256, "left", 0, 2, 2)
end

function pong.init()

	love.graphics.setNewFont(10)

	love.graphics.setColor(PINK)
	love.graphics.printf("Ready?", 208, 20, 256, "left", 0, 3, 3)

	love.graphics.setColor(BLUE)
	love.graphics.printf("(esc to pause)", 208, 58, 256, "left", 0, 1.5, 1.5)

end


function pong.suspend()

	love.graphics.setNewFont(10)

	love.graphics.setColor(BLUE)
	love.graphics.printf("(esc to quit)", 212, 20, 256, "left", 0, 1.5, 1.5)
end