local module = {}

local platform_position_x = 2 * U
local platform_position_y = 4 * U

local default_color = { love.graphics.getColor() }


module.platform = {
    shape = love.physics.newRectangleShape(3 * U, U / 2),
    body = love.physics.newBody(WORLD, platform_position_x, platform_position_y, "static"),
    color = { 1, 1, 1 }
}
module.platform.fixture = love.physics.newFixture(module.platform.body, module.platform.shape)
module.platform.vertices = function()
    return { module.platform.body:getWorldPoints(module.platform.shape:getPoints()) }
end


function module.platform.draw()
    love.graphics.setColor(module.platform.color)
    love.graphics.polygon("fill", module.platform.vertices())
    love.graphics.setColor(default_color)
end

return module
