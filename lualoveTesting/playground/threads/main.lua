function love.load()

   thread = love.thread.newThread("thread.lua")
   channel = love.thread.getChannel("test")
   
   text = ""

end
function love.update(dt)
  thread:start()
    v = ""
     v = channel:pop()
    print(v)
end
function love.draw()
   --love.graphics.print(tostring(i[1]), 10, 10)
   love.graphics.print(text,100,100)
end

function love.keypressed(key, isrepeat)
channel:push("go")
    v = ""
     v = channel:pop()
    print(v)
end