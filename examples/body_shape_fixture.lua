local module = {}

module.meter = 64
love.physics.setMeter(module.meter)
module.world = love.physics.newWorld(0, 9.81 * module.meter, true)

module.circleShape = love.physics.newCircleShape(20)
module.body = love.physics.newBody(module.world, 40, 40, "dynamic")
module.fixture = love.physics.newFixture(module.body, module.circleShape)

module.draw_shape = function()
    local x, y = module.fixture:getBody():getPosition()
    local radius = module.fixture:getShape():getRadius()
    love.graphics.circle(
        "fill",
        x, y,
        radius
    )
end

return module
