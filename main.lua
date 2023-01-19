U = 10 -- unit of length, meter actualy, because...
WORLD = love.physics.newWorld(0, 9.81 * U) -- ... we set gravity to 9.81*u

-- local player = require("player")
local Platform = require("platform")

local platform_1 = Platform.new()
local platform_2 = Platform.new(150, 150)

function love.update(dt)
    WORLD:update(dt)
end

function love.draw()
    platform_1.draw()
    platform_2.draw()

    -- pr.player.draw()
    -- pm.platform.draw()
end
