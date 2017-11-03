require "multiHandler"

local shader 
local canvas

mH = multiHandler

function love.load() 

	shader = love.graphics.newShader("shader1.glsl")

	canvas = love.graphics.newCanvas(mH.getScreenWidth(), mH.getScreenHeight() )

end


function love.update(dt)

-- increment our pseudo time variable
    time = dt + time;
    -- When converting, the following variables were requested from the shader...
    shader:send('iResolution', { mH.getScreenWidth(), mH.getScreenHeight(), 1 })
    shader:send('iGlobalTime', time)
    shader:send('iMouse', { love.mouse.getX(), love.mouse.getY(), 0, 0 })

end


function love.draw()
    love.graphics.setCanvas(canvas)
    love.graphics.setShader(shader)
    love.graphics.draw(canvas)
    love.graphics.setShader()
    love.graphics.setCanvas()

    love.graphics.draw(canvas,0,0,0,1,1,0,0)
end