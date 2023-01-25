-- init world and basic physics
local meter = 20
love.physics.setMeter(meter)
love.graphics.setBackgroundColor(0.41, 0.53, 0.97)
WORLD = love.physics.newWorld(0, 9.81 * meter, true)

local ball = require("examples.structurisation.game.objects").ball
local floor = require("examples.structurisation.game.objects").floor

function love.update(dt)
    WORLD:update(dt)
    ball:handle_input()
end

function love.draw()
    ball:draw()
    floor:draw()
end
