U = 15 -- unit of length, meter actualy, because...
WORLD = love.physics.newWorld(0, 20 * U) -- ... we set gravity to 9.81*u

-- FIXME: this can blow right into my face
local is_touching_platform = false -- we've set it as local and pass as paramater to player.handle_input
local function beginContact(a, b, coll)
    local nx, ny = coll:getNormal()
    if ny ~= 0 then 
        is_touching_platform = true
    end
end -- this doesn't check WHAT is being touched and BY WHAT

local function endContact(a, b, coll) is_touching_platform = false end

WORLD:setCallbacks(beginContact, endContact)

local Platform = require("platform")
local Player = require("player")
local Coin = require("coins")

local platforms = {}
local coins = {}

local platforms_coords = require("platforms")

for _, platform in ipairs(platforms_coords) do
    table.insert(platforms, Platform.new(platform[1], platform[2], platform[3]))
end

for _, platforms in ipairs(platforms) do
    table.insert(coins, Coin.new(platforms))
end


local player_1 = Player.new()


function love.update(dt)
    WORLD:update(dt)
    player_1.handle_input(is_touching_platform)
end

function love.draw()
    for _, platform in ipairs(platforms) do platform.draw() end
    for _, coin in ipairs(coins) do coin.draw() end

    player_1.draw()
end
