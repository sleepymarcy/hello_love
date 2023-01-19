local default_love_color = { love.graphics.getColor() }

local player = {}
local default_player_color = { 1, 0, 1 }
local default_keys = {
    left = "left",
    right = "right",
    jump = "space"
}

function player.new(x, y, width, height, color, keys)
    local new_player = {}

    new_player.color = color or default_player_color
    x = x or (10 * U)
    y = y or (0 * U)
    width = width or (1 * U)
    height = height or (3 * U)
    keys = keys or default_keys


    new_player.shape = love.physics.newRectangleShape(width, height)
    new_player.body = love.physics.newBody(WORLD, x, y, "dynamic")
    new_player.fixture = love.physics.newFixture(new_player.body, new_player.shape)

    function new_player.vertices()
        return { new_player.body:getWorldPoints(new_player.shape:getPoints()) }
    end

    function new_player.handle_input()
        if love.keyboard.isDown(keys.left) then
            -- go left
            new_player.body:setLinearVelocity(-20 * U, 0)
        end

        if love.keyboard.isDown(keys.right) then
            -- go right
            new_player.body:setLinearVelocity(20 * U, 0)
        end

        if love.keyboard.isDown(keys.jump) then
            -- jump
            new_player.body:setLinearVelocity(0, -20 * U)
        end
    end

    function new_player.draw()
        love.graphics.setColor(new_player.color)
        love.graphics.polygon("fill", new_player.vertices())
        love.graphics.setColor(default_love_color)
    end

    return new_player
end

return player
