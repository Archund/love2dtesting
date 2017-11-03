local push = require "push"
require "multiHandler"
require "timer"
require "pong"




-----------------------------------------------------------------------------------------

love.graphics.setDefaultFilter("nearest", "nearest", 1)

local gameWidth, gameHeight 	= 512, 256

local windowWidth, windowHeight = love.window.getDesktopDimensions()
windowWidth, windowHeight 		= windowWidth*.7, windowHeight*.6

push:setupScreen(gameWidth, gameHeight, windowWidth, windowHeight, {
    fullscreen 		= false,
    resizable 		= true,
    pixelperfect 	= true

})

push:setBorderColor{0, 0, 60} --default value

-----------------------------------------------------------------------------------------



function love.load()

  states                        = {[0]=menu, [1]=init, [2]=game, [3]=suspend}
  MENU,INIT,GAME,SUSPEND        = 0,1,2,3
  state                         = MENU
  paused                        = true

  PINK                          = {200,100,266}
  BLUE                          = {80,80,180}

  lscore                        = 0
  rscore                        = 0


 ------------------------
 --Physics Declarations--
 ------------------------

love.physics.setMeter(64)
world 							            = love.physics.newWorld(0, 0, false)
world:setCallbacks(beginContact, endContact, preSolve, postSolve)


ground 							            = {}
ground.body 					          = love.physics.newBody(world, gameWidth/2, gameHeight-2, "static")
ground.shape 					          = love.physics.newRectangleShape(gameWidth + 8, 6)
ground.fixture 					        = love.physics.newFixture(ground.body, ground.shape)

roof                            = {}
roof.body                       = love.physics.newBody(world, gameWidth/2, 2, "static")
roof.shape                      = love.physics.newRectangleShape(gameWidth + 8, 6)
roof.fixture                    = love.physics.newFixture(roof.body, roof.shape)

ball 							              = {}
ball.body 						          = love.physics.newBody(world, gameWidth/2, gameHeight/2, "dynamic")
ball.shape 						          = love.physics.newCircleShape(10)
ball.fixture 					          = love.physics.newFixture(ball.body, ball.shape, 3)
ball.body:setLinearDamping(0.001)

lwall                           = {}
lwall.body                      = love.physics.newBody(world, 0 +4, gameHeight/2, "dynamic")
lwall.shape                     = love.physics.newRectangleShape(8, gameHeight/5)
lwall.fixture                   = love.physics.newFixture(lwall.body, lwall.shape)
lwall.body:setInertia(16)
lwall.body:setLinearDamping(.8)

rwall                           = {}
rwall.body                      = love.physics.newBody(world, gameWidth-4, gameHeight/2, "dynamic")
rwall.shape                     = love.physics.newRectangleShape(8, gameHeight/5)
rwall.fixture                   = love.physics.newFixture(rwall.body, rwall.shape)
rwall.body:setInertia(16)
rwall.body:setLinearDamping(.8)

force                           = 64

bvx                             = 0
bvy                             = 0
direction                       = 0

end



function love.update(dt)

  timer.update(dt)

  if not paused then
    world:update(dt)
  end




  if love.keyboard.isDown("up") then
    if rwall.body:getY() >gameHeight*(1/5) then
  	 rwall.body:applyForce(0, -force)
    end
  elseif love.keyboard.isDown("down") then
    if rwall.body:getY() <gameHeight*(4/5) then
  	 rwall.body:applyForce(0, force)
    end
  end
  rwall.body:setX(gameWidth-4)
  rwall.body:setAngle(0)



    if love.keyboard.isDown("w") then
    if lwall.body:getY() >gameHeight*(1/5) then
     lwall.body:applyForce(0, -force)
    end
  elseif love.keyboard.isDown("s") then
    if lwall.body:getY() <gameHeight*(4/5) then
     lwall.body:applyForce(0, force)
    end
  end
  lwall.body:setX(4)
  lwall.body:setAngle(0)


  if love.keyboard.isDown("space") then
    if state == MENU then
      state = INIT
      timer.startCool()
    elseif state == INIT  and timer.getCool() > 1 then
      state = GAME
      paused = false 
      direction = love.math.noise(timer.getGlobal())*2*math.pi
      ball.body:applyLinearImpulse(force*math.cos(direction)*.8, force*math.sin(direction)*.8)
    elseif state == SUSPEND then
      state = GAME
      paused = false
    end

  elseif love.keyboard.isDown("escape") then
    if state == GAME then
      paused = true
      state = SUSPEND
    end
  end


  if ball.body:getX() > gameWidth then
    lscore = lscore+1
    state = INIT
    ball.body:setPosition(gameWidth/2, gameHeight/2)
    ball.body:setLinearVelocity(0,0)
  elseif ball.body:getX() < 0 then
    rscore = rscore+1
    state = INIT
    ball.body:setPosition(gameWidth/2, gameHeight/2)
    ball.body:setLinearVelocity(0,0)
  end

end



function love.draw()
	push:start()

  if state == MENU then
    pong.menu()

  elseif state == INIT then
    love.graphics.setNewFont(8)
    love.graphics.printf(lscore, 208, 210, 256, "left", 0, 2, 2)
    love.graphics.printf(rscore, 290, 210, 256, "left", 0, 2, 2)
    love.graphics.printf(rscore, 290, 210, 256, "left", 0, 2, 2)
    pong.draw()

  elseif state == SUSPEND then
    love.graphics.setNewFont(8)
    love.graphics.printf(lscore, 208, 210, 256, "left", 0, 2, 2)
    love.graphics.printf(rscore, 290, 210, 256, "left", 0, 2, 2)
    pong.draw()
    pong.suspend()

    pong.draw()
    pong.init()

  elseif state == GAME then
    love.graphics.setNewFont(8)
    love.graphics.printf(lscore, 208, 210, 256, "left", 0, 2, 2)

  end

  -- --love.graphics.printf("hello", 2, 2, 100, "left", math.sin(timer.getGlobal()) )
  


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




function beginContact(a, b, coll)

  if (a == lwall.fixture and b == ball.fixture)or(a == ball.fixture and b == lwall.fixture) then
    bvx,bvy = ball.body:getLinearVelocity()
    ball.body:setLinearVelocity(-bvx+(force/4),bvy)
  elseif(a == rwall.fixture and b == ball.fixture)or(a == ball.fixture and b == rwall.fixture) then
    bvx,bvy = ball.body:getLinearVelocity()
    ball.body:setLinearVelocity(-bvx-(force/4),bvy)
  elseif(a == roof.fixture and b == ball.fixture)or(a == ball.fixture and b == roof.fixture) then
    bvx,bvy = ball.body:getLinearVelocity()
    ball.body:setLinearVelocity(bvx,-bvy)
  elseif(a == ground.fixture and b == ball.fixture)or(a == ball.fixture and b == ground.fixture) then
    bvx,bvy = ball.body:getLinearVelocity()
    ball.body:setLinearVelocity(bvx,-bvy)
  end
 
end
 
function endContact(a, b, coll)
 
end
 
function preSolve(a, b, coll)
 
end
 
function postSolve(a, b, coll, normalimpulse, tangentimpulse)
 
end