U = 10 -- unit of length, meter actualy, because...
WORLD = love.physics.newWorld(0, 9.81 * U) -- ... we set gravity to 9.81*u
WORLD:setCallbacks(beginContact, endContact, preSolve, postSolve)

-- local player = require("player")
local Platform = require("platform")
local Player = require("player")

local platform_1 = Platform.new()
local platform_2 = Platform.new(150, 150)

local player_1 = Player.new()

function love.update(dt)
    WORLD:update(dt)
    player_1.handle_input()
end

function love.draw()
    platform_1.draw()
    platform_2.draw()
    player_1.draw()

    -- pr.player.draw()
    -- pm.platform.draw()
end

function beginContact(Player, Platform, coll)

end

function endContact(Player, Platform, coll)

end

function preSolve(Player, Platform, coll)

end

function postSolve(Player, Platform, coll, normalimpulse, tangenimpulse)

end

-- beginContact gets called when two fixtures start overlapping (two objects collide).
-- endContact gets called when two fixtures stop overlapping (two objects disconnect).
-- preSolve is called just before a frame is resolved for a current collision
-- postSolve is called just after a frame is resolved for a current collision.

-- coll is the contact object created.

-- normalimpulse is the amount of impulse applied along the normal of the first point of collision.
-- It only applies to the postsolve callback, and we can ignore it for now.

-- tangentimpulse is the amount of impulse applied along the tangent of the first point of collision.
-- It only applies to the postsolve callback, and we can ignore it for now.