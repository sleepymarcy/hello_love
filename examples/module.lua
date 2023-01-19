-- init world and basic physics
local m = 64
local world = love.physics.newWorld(0, 9.81 * m, true)
love.physics.setMeter(m)

local base_color = { love.graphics.getColor() }

local ball = {
    body = love.physics.newBody(world, 40, 40, "dynamic"),
    shape = love.physics.newCircleShape(20),
    color = { 1, 0, 0 },
    draw = function(self)
        love.graphics.setColor(self.color)
        love.graphics.circle("fill", self.body:getX(), self.body:getY(), self.shape:getRadius())
        love.graphics.setColor(base_color)
    end
}
ball.fixture = love.physics.newFixture(ball.body, ball.shape)

local floor_height = 10;
local floor = {
    body = love.physics.newBody(world, love.graphics.getWidth() / 2, love.graphics.getHeight() - floor_height/2, "static"),
    shape = love.physics.newRectangleShape(love.graphics.getWidth(), floor_height),
    color = { 0, 1, 0 },
    draw = function(self)
        love.graphics.setColor(self.color)
        love.graphics.polygon("fill", {self.body:getWorldPoints(self.shape:getPoints())})
        love.graphics.setColor(base_color)
        
    end
    
}
floor.fixture = love.physics.newFixture(floor.body, floor.shape)

function love.draw()
    ball:draw()
    floor:draw()
end

function love.update(dt)
    world:update(dt)
end
