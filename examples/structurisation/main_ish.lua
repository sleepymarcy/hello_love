-- init world and basic physics
local meter = 20
love.physics.setMeter(meter)
WORLD = love.physics.newWorld(0, 9.81 * meter, true)

local ball = require("examples.structurisation.game.objects").ball
local floor = require("examples.structurisation.game.objects").floor

function love.draw()
    ball:draw()
    floor:draw()
end

function love.update(dt)
    WORLD:update(dt)
end
