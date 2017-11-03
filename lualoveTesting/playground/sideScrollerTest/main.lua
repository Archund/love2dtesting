debug = true

require('.bin/camera')

--player related variables --

player = { x = 200, y = 510, speed = 20, velocity = 16, r = 0, img = nil, rotAcc = 0.8}
isAlive = true
maxRot = .24
maxSpeed = 220

score = 0

sword = { x = player.x+15, y = player.y, img = nil}




-- Timers --

canAttack = true
cooldownTimerMax = 0.08 
cooldownTimer = cooldownTimerMax

createEnemyCooldownMax = 0.4
createEnemyCooldown = createEnemyCooldownMax
  

enemyImg = nil
enemies = {} 





function love.load(arg)

	player.img = love.graphics.newImage('assets/char.png')

	enemyImg = love.graphics.newImage('assets/enemy.png')


end














function love.update(dt)

	-- draw camera --
	camera:setPosition(player.x, player.y)


	-- exit --
	if (love.keyboard.isDown('escape')) then
		love.event.push('quit')
	end


	-- movement ------------------
	
	-- horizontal
	if (love.keyboard.isDown('left','a')) then
		if (player.x > 0) then 
			if (player.speed < maxSpeed) then
				player.speed = player.speed + player.velocity
				player.x = player.x - (player.speed*dt)
			end
		end
	elseif (love.keyboard.isDown('right','d')) then
		if (player.x < (love.graphics.getWidth()/4)) then
			if (player.speed < maxSpeed) then
				player.speed = player.speed + player.velocity
				 player.x = player.x + (player.speed*dt)
			end
			
		end
	end

	-- vertical
	if (love.keyboard.isDown('up', 'w')) then
		if (player.y > 0) then
			if (player.speed < maxSpeed) then
				player.speed = player.speed + player.velocity
			end
			player.y = player.y - (player.speed*dt)
			if (player.r > 0-maxRot) then 
				player.r = player.r - (player.rotAcc*dt)
			end
		end
	elseif (love.keyboard.isDown('down', 's')) then
		if (player.y < (love.graphics.getHeight()-player.img:getHeight())) then
			if (player.speed < maxSpeed) then
				player.speed = player.speed + player.velocity
			end
			player.y = player.y + (player.speed*dt)
			if (player.r < maxRot) then 
				player.r = player.r + (player.rotAcc*dt)
			end
		end
	end

	-- reset rotation
	if (not love.keyboard.isDown('up', 'w') and not love.keyboard.isDown('down', 's')) then
		if (player.r > 0) then
			player.r = player.r - (player.rotAcc*dt)
		end
		if (player.r < 0) then
			player.r = player.r + (player.rotAcc*dt)
		end
	end

	--reset speed
	if (not love.keyboard.isDown('up', 'down', 'left', 'right', 'w', 'a', 's', 'd')) then
		if (player.speed > 0) then
			player.speed = player.speed - (player.velocity*dt)
		end
	end















end














function love.draw(dt)

	camera:draw()

	--draw player only if alive 

	if (isAlive) then
		love.graphics.draw(player.img, player.x, player.y, player.r)
	else
		love.graphics.print("Press 'R' to restart", love.graphics:getWidth()/2, love.graphics:getHeight()/2)
	end


	for i, enemy in ipairs(enemies) do
		love.graphics.draw(enemy.img, enemy.x, enemy.y)
	end

	-- prnt score
	love.graphics.setColor(255, 255, 255)
	love.graphics.print("SCORE: " .. tostring(score), love.graphics:getWidth()- 100, 10)

end