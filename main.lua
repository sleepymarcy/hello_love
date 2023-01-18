local u = 20 -- unit of length

local my_world = love.physics.newWorld()
local player_position_x = 2 * u
local player_position_y = 2 * u

local player_shape = love.physics.newRectangleShape(u, 3 * u)
local player_body = love.physics.newBody(my_world, player_position_x, player_position_y, "dynamic")
local player_fixture = love.physics.newFixture(player_body, player_shape)

local player_vertices

function love.update(dt)
    my_world:update(dt)
    player_vertices = {player_body:getWorldPoints(player_shape:getPoints())}
end

function love.draw()
    love.graphics.polygon("fill", player_vertices)
end
