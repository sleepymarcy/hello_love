U = 10 -- unit of length, meter actualy, because...
local callbacks = require("callbacks")
local map1 = require("map1")
WORLD = love.physics.newWorld(0, 20 * U) -- ... we set gravity to 20*u
WORLD:setCallbacks(callbacks.beginContact, callbacks.endContact)

local Platform = require("classes.Platform")


-- local platforms = {Platform(WORLD, 300, 400), Platform(WORLD, 100, 200)}
local platforms = Platform.generate_platforms(WORLD, map1)
local coins = {}

function love.update(dt)
    WORLD:update(dt)
    -- player_1.handle_input(is_touching_platform)
end

function love.draw()
    for _, platform in ipairs(platforms) do platform:draw() end
    -- for _, coin in ipairs(coins) do coin.draw() end

    -- player_1.draw()
    -- obj:draw()
end
