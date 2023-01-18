local my_world = love.physics.newWorld()
local player_position_x = 100
local player_position_y = 100

local player_shape = love.physics.newRectangleShape(20,60)
local player_body = love.physics.newBody(my_world, player_position_x, player_position_y, "dynamic")
local player_fixture = love.physics.newFixture(player_body, player_shape)




function love.update(dt)
    my_world:update(dt)
end

function love.draw()
end