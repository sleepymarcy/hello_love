local Class = require("modules.classic")
local Vec2 = require("classes.vec2")
local Color = require("classes.vec3")

local Rocket = Class:extend()

function Rocket:new(position, dimensions, color, base_speed)
    self.position = position
    self.dimensions = dimensions
    self.color = color
    self.base_speed = base_speed
    self.horisontal_velocity = 0
end

function Rocket:draw()
    love.graphics.setColor(self.color:get())
    love.graphics.rectangle(
        "fill",
        self.position.x, self.position.y,
        self.dimensions.x, self.dimensions.y
    )
    love.graphics.setColor(1, 1, 1)
end

function Rocket:move_up()
    self.horisontal_velocity = -self.base_speed
end

function Rocket:move_down()
    self.horisontal_velocity = self.base_speed
end

function Rocket:stop()
    self.horisontal_velocity = 0
end

function Rocket:update(dt)
    if self.position.y <= 0 and self.horisontal_velocity < 0
        or
        self.position.y + self.dimensions.y >= love.graphics.getHeight() and self.horisontal_velocity > 0
    then
        self.horisontal_velocity = 0
    end
    self.position.y = self.position.y + self.horisontal_velocity * dt
end

return Rocket
