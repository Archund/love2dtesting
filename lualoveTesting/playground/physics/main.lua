
function love.load()



  love.physics.setMeter(64) --the height of a meter our worlds will be 64px
  world = love.physics.newWorld(0, 9.81*64, true)
  objects = {} -- table to hold all our physical objects
 
  --let's create the ground
  objects.ground = {}
  objects.ground.body = love.physics.newBody(world, 1080/2, 900-80/2) --remember, the shape (the rectangle we create next) anchors to the body from its center, so we have to move it to (650/2, 650-50/2)
  objects.ground.shape = love.physics.newRectangleShape(1080, 50) --make a rectangle with a width of 650 and a height of 50
  objects.ground.fixture = love.physics.newFixture(objects.ground.body, objects.ground.shape) --attach shape to body
 
  --let's create a ball
  objects.ball = {}
  objects.ball.body = love.physics.newBody(world, 1080/2, 1080/2, "dynamic") --place the body in the center of the world and make it dynamic, so it can move around
  objects.ball.shape = love.physics.newCircleShape( 20) --the ball's shape has a radius of 20
  objects.ball.fixture = love.physics.newFixture(objects.ball.body, objects.ball.shape, 2) -- Attach fixture to body and give it a density of 1.
  objects.ball.fixture:setRestitution(0.99) --let the ball bounce
 
  --let's create a couple blocks to play around with
  objects.block1 = {}
  objects.block1.body = love.physics.newBody(world, 200, 700, "dynamic")
  objects.block1.shape = love.physics.newRectangleShape(0, 0, 50, 200)
  objects.block1.fixture = love.physics.newFixture(objects.block1.body, objects.block1.shape, 5) -- A higher density gives it more mass.
 
  objects.block2 = {}
  objects.block2.body = love.physics.newBody(world, 500, 700, "dynamic")
  objects.block2.shape = love.physics.newRectangleShape(0, 0, 50, 180)
  objects.block2.fixture = love.physics.newFixture(objects.block2.body, objects.block2.shape, 3)

  objects.block3 = {}
  objects.block3.body = love.physics.newBody(world, 350, 600, "dynamic")
  objects.block3.shape = love.physics.newRectangleShape(0, 0, 400, 50)
  objects.block3.fixture = love.physics.newFixture(objects.block3.body, objects.block3.shape, 3)


  objects.polygon = {}
  objects.polygon.body = love.physics.newBody(world, 350, 200, "dynamic")
  objects.polygon.shape = love.physics.newPolygonShape(0 , 50, 50 , 0, 100, 50)
  objects.polygon.fixture = love.physics.newFixture(objects.polygon.body, objects.polygon.shape, 3)

  objects.other = {}
  objects.other.body = love.physics.newBody(world, 600, 200, "dynamic")
  objects.other.shape = love.physics.newPolygonShape(0 , 50, 0 , 100, 50, 150, 100, 150, 150, 100, 150, 50, 100, 0, 50,0)
  objects.other.fixture = love.physics.newFixture(objects.other.body, objects.other.shape, 1)

  objects.static = {}
  objects.other.body = love.physics.newBody(world, 600, 300, "static")
  


    --initial graphics setup
  love.graphics.setBackgroundColor(104, 136, 248) 

  large = love.graphics.setNewFont(20)



end


function love.update(dt)


  world:update(dt) --this puts the world into motion
 
  --here we are going to create some keyboard events
  if love.keyboard.isDown("right") then --press the right arrow key to push the ball to the right
    objects.ball.body:applyForce(400, 0)
  elseif love.keyboard.isDown("left") then --press the left arrow key to push the ball to the left
    objects.ball.body:applyForce(-400, 0)
  elseif love.keyboard.isDown("down") then 
    objects.ball.body:setPosition(650/2, 650/2)
    objects.ball.body:setLinearVelocity(0, 0) 
  elseif love.keyboard.isDown("up") then
  	objects.ball.body:applyForce(0, -400)
  end

end



function love.draw()


  love.graphics.setColor(72, 160, 14) -- set the drawing color to green for the ground
  love.graphics.polygon("fill", objects.ground.body:getWorldPoints(objects.ground.shape:getPoints())) 
   love.graphics.setColor(193, 47, 14) --set the drawing color to red for the ball
  love.graphics.circle("fill", objects.ball.body:getX(), objects.ball.body:getY(), objects.ball.shape:getRadius())
 
  love.graphics.setColor(50, 50, 50) -- set the drawing color to grey for the blocks
  love.graphics.polygon("fill", objects.block1.body:getWorldPoints(objects.block1.shape:getPoints()))
  love.graphics.polygon("fill", objects.block2.body:getWorldPoints(objects.block2.shape:getPoints()))
  love.graphics.polygon("fill", objects.block3.body:getWorldPoints(objects.block3.shape:getPoints()))
  love.graphics.polygon("fill", objects.polygon.body:getWorldPoints(objects.polygon.shape:getPoints()))
  love.graphics.polygon("fill", objects.other.body:getWorldPoints(objects.other.shape:getPoints()))

 	love.graphics.printf("Use the arrow keys to move", 100, 200, 400, "left")
end