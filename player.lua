local module = {}

local player_position_x = 2 * U
local player_position_y = 2 * U

local default_color = { love.graphics.getColor() }


module.player = {
    shape = love.physics.newRectangleShape(U, 3 * U),
    body = love.physics.newBody(WORLD, player_position_x, player_position_y, "dynamic"),
    color = { 0, 1, 0 }
}
module.player.fixture = love.physics.newFixture(module.player.body, module.player.shape)

module.player.vertices = function()
    return { module.player.body:getWorldPoints(module.player.shape:getPoints()) }
end

function module.player.draw()
    love.graphics.setColor(module.player.color)
    love.graphics.polygon("fill", module.player.vertices())
    love.graphics.setColor(default_color)
end

return module
