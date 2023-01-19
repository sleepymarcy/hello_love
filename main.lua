U = 20 -- unit of length, meter actualy, because...
WORLD = love.physics.newWorld(0, 9.81 * U) -- ... we set gravity to 9.81*u

local pr = require("player")
local pm = require("platform")

function love.update(dt)
    WORLD:update(dt)
end

function love.draw()
    pr.player.draw()
    pm.platform.draw()
end
