local PhysicalObject = require("classes.PhysicalObject")

local RectangularObject = PhysicalObject:extends()


function RectangularObject:init(world, px, py, width, height, color, type)
    self.body = love.physics.newBody(world, px, py, type)
    self.shape = love.physics.newRectangleShape(width, height)
    self.fixture = love.physics.newFixture(self.body, self.shape)
    self.color = color or { 1,1,1 }
end

RectangularObject.draw = function(self)
    local prev_color = { love.graphics.getColor() }
    love.graphics.setColor(self.color)
    love.graphics.polygon(
        "fill",
        self:vertices()
    )
    love.graphics.setColor(prev_color)
end

RectangularObject.vertices = function(self)
    return { self.body:getWorldPoints(self.shape:getPoints()) }
end

return RectangularObject
