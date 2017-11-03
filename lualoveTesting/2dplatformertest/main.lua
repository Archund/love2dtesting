local push = require "push"
require "multiHandler"
require "timer"




-----------------------------------------------------------------------------------------

love.graphics.setDefaultFilter("nearest", "nearest", 1)

local gameWidth, gameHeight 	= 200, 100--96,64

local windowWidth, windowHeight = love.window.getDesktopDimensions()
windowWidth, windowHeight 		= windowWidth*.5, windowHeight*.5

push:setupScreen(gameWidth, gameHeight, windowWidth, windowHeight, {
    fullscreen 		= false,
    resizable 		= true,
    pixelperfect 	= true

})

push:setBorderColor{0, 0, 60} --default value

-----------------------------------------------------------------------------------------



function love.load()

  love.graphics.setNewFont(12)

  love.keyboard.setKeyRepeat(false)

 ------------------------
 --Physics Declarations--
 ------------------------

love.physics.setMeter(gameWidth)
world 							= love.physics.newWorld(0, 9.81*gameWidth, true)

ground 							= {}
ground.body 					= love.physics.newBody(world, gameWidth/2, gameHeight-4, "static")
ground.shape 					= love.physics.newRectangleShape(gameWidth + 8, 6)
ground.fixture 					= love.physics.newFixture(ground.body, ground.shape)


lwall	 						= {}
lwall.body 						= love.physics.newBody(world, 0 -1, gameHeight/2, "static")
lwall.shape 					= love.physics.newRectangleShape(4, gameHeight)
lwall.fixture 					= love.physics.newFixture(lwall.body, lwall.shape)


rwall	 						= {}
rwall.body 						= love.physics.newBody(world, gameWidth +1 , gameHeight/2, "static")
rwall.shape 					= love.physics.newRectangleShape(4, gameHeight)
rwall.fixture 					= love.physics.newFixture(rwall.body, rwall.shape)


mc 								= {}
mc.body 						= love.physics.newBody(world, gameWidth/2, gameHeight/2, "dynamic")
mc.shape 						= love.physics.newRectangleShape(20,20)
mc.fixture 						= love.physics.newFixture(mc.body, mc.shape, 1)
mc.fixture:setRestitution(.5)



one 							= {}
one.body 						= love.physics.newBody(world, 160, 4, "dynamic")
one.shape 						= love.physics.newRectangleShape(10, 20)
one.fixture 					= love.physics.newFixture(one.body, one.shape, 3)
one.fixture:setRestitution(.99)

two 							= {}
two.body 						= love.physics.newBody(world, 4, 4, "dynamic")
two.shape 						= love.physics.newPolygonShape(5,5 ,5,20 ,20,20)
two.fixture 					= love.physics.newFixture(two.body, two.shape, 3)

ball 							= {}
ball.body 						= love.physics.newBody(world, 55, 8, "dynamic")
ball.shape 						= love.physics.newCircleShape(3)
ball.fixture 					= love.physics.newFixture(ball.body, ball.shape, 3)
ball.fixture:setRestitution(.8)




end



function love.update(dt)

timer.update(dt)

world:update(dt)




if love.keyboard.isDown("right") then

	mc.body:applyForce(10, 0)
elseif love.keyboard.isDown("left") then
	mc.body:applyForce(-10, 0)
elseif love.keyboard.isDown("down") then
	mc.body:setPosition(gameWidth/2, gameHeight/2)
	mc.body:setLinearVelocity(0,0)
end


end



function love.draw()
	push:start()


  -- --love.graphics.printf("hello", 2, 2, 100, "left", math.sin(timer.getGlobal()) )

  -- love.graphics.translate(32,32)
  -- love.graphics.rotate(timer.getGlobal())
  -- love.graphics.circle("fill", 0, 0, 10, timer.getGlobal() % 12 + 3)
  -- love.graphics.rotate(-timer.getGlobal())
  
  -- --love.graphics.printf(text, x, y, limit, align, r, sx, sy, ox, oy, kx, ky)



  love.graphics.setColor(80,100,80)
  love.graphics.polygon("fill", ground.body:getWorldPoints(ground.shape:getPoints()) )

  love.graphics.setColor(80 , 80, 180)
  love.graphics.polygon("fill", lwall.body:getWorldPoints(lwall.shape:getPoints()))
  love.graphics.polygon("fill", rwall.body:getWorldPoints(rwall.shape:getPoints()))

  love.graphics.setColor(200,100,255)

  love.graphics.polygon("fill", one.body:getWorldPoints(one.shape:getPoints()))
  love.graphics.polygon("fill", two.body:getWorldPoints(two.shape:getPoints()))
  love.graphics.circle("line", ball.body:getX(), ball.body:getY(), ball.shape:getRadius(), 12)

  love.graphics.setColor(220,150,255)

  love.graphics.polygon("fill", mc.body:getWorldPoints(mc.shape:getPoints()))







	push:finish()
end




function love.resize(w,h)
	windowWidth 				= w 
	windowHeight 				= h

	push:setupScreen(gameWidth, gameHeight, windowWidth, windowHeight, {
    fullscreen 		= false,
    resizable 		= true,
    pixelperfect 	= true

	})

	push:setBorderColor{0, 0, 60} --default value
end