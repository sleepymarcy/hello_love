local m = love.physics.getMeter()

local base_color = { love.graphics.getColor() }
local ball = {
    body = love.physics.newBody(WORLD, 2*m, 2*m, "dynamic"),
    shape = love.physics.newCircleShape(1*m),
    color = { 1, 0, 0 },
    draw = function(self)
        love.graphics.setColor(self.color)
        love.graphics.circle("fill", self.body:getX(), self.body:getY(), self.shape:getRadius())
        love.graphics.setColor(base_color)
    end
}
ball.fixture = love.physics.newFixture(ball.body, ball.shape)

local floor_height = 1*m;
local floor = {
    body = love.physics.newBody(WORLD, love.graphics.getWidth() / 2, love.graphics.getHeight() - floor_height/2, "static"),
    shape = love.physics.newRectangleShape(love.graphics.getWidth(), floor_height),
    color = { 0, 1, 0 },
    draw = function(self)
        love.graphics.setColor(self.color)
        love.graphics.polygon("fill", {self.body:getWorldPoints(self.shape:getPoints())})
        love.graphics.setColor(base_color)
        
    end
    
}
floor.fixture = love.physics.newFixture(floor.body, floor.shape)


return {ball = ball, floor = floor}