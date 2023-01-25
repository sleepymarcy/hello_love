local m = love.physics.getMeter()

local acceleration = 60 * m -- m/s^2, s = 1
local max_horisontal_velocity = 20 * m -- m/s, s = 1

local base_color = { love.graphics.getColor() }
local ball = {
    body = love.physics.newBody(WORLD, 2 * m, 2 * m, "dynamic"),
    shape = love.physics.newCircleShape(0.5 * m),
    color = { 0.76, 0.18, 0.05 },
}
ball.acceleration_force = acceleration / ball.body:getMass()
ball.fixture = love.physics.newFixture(ball.body, ball.shape)
ball.fixture:setFriction(1)
ball.body:setAngularDamping(100)
function ball.draw(self)
    love.graphics.setColor(self.color)
    love.graphics.circle("fill", self.body:getX(), self.body:getY(), self.shape:getRadius())
    love.graphics.setColor(base_color)
end

function ball.handle_input(self)
    if love.keyboard.isDown("right") then
        if self.body:getLinearVelocity() < max_horisontal_velocity then
            self.body:applyForce(
                self.acceleration_force,
                0
            )
        end
    end
    if love.keyboard.isDown("left") then
        if self.body:getLinearVelocity() > -max_horisontal_velocity then
            self.body:applyForce(
                -self.acceleration_force,
                0
            )
        end
    end
    if love.keyboard.isDown("down") then
        self.body:applyForce(0, force)
    end
    if love.keyboard.isDown("space") then

    end
end

local floor_height = 1 * m;
local floor = {
    body = love.physics.newBody(WORLD, love.graphics.getWidth() / 2, love.graphics.getHeight() - floor_height / 2,
        "static"),
    shape = love.physics.newRectangleShape(love.graphics.getWidth(), floor_height),
    color = { 0.28, 0.63, 0.05 },
    draw = function(self)
        love.graphics.setColor(self.color)
        love.graphics.polygon("fill", { self.body:getWorldPoints(self.shape:getPoints()) })
        love.graphics.setColor(base_color)

    end

}
floor.fixture = love.physics.newFixture(floor.body, floor.shape)


return { ball = ball, floor = floor }
