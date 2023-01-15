local Rocket = require("classes.rocket")
local Vec2 = require("classes.vec2")
local Color = require("classes.vec3")
-- new(position, dimensions, color, base_speed)

local left_rocket

function love.load()
    left_rocket = Rocket(Vec2(10, 10), Vec2(10, 100), Color(1, 0, 1), 400)
end

function love.update(dt)
    left_rocket:update(dt)
end

function love.draw()
    left_rocket:draw()
end

function love.keypressed(key)
	if key == "r" then
		love.event.quit("restart")
	end

    if key == "w" then
		left_rocket:move_up()
	end
    if key == "s" then
		left_rocket:move_down()
	end
end

function love.keyreleased(key)
    if key == "w" or key == "s" then
		left_rocket:stop()
	end
end