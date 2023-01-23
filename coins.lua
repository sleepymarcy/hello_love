local default_love_color = { love.graphics.getColor() }

local coin = {}

function coin.new(platform, radius, color)
    radius = 0.5 * U
    local x = platform.body:getX()
    local y = platform.body:getY() - platform.height / 2 - 2 * radius

    local new_coin = {}

    new_coin.color = color or { 1, 1, 0 }

    new_coin.shape = love.physics.newCircleShape(0, 0, radius)
    new_coin.body = love.physics.newBody(WORLD, x, y, "static")
    new_coin.fixture = love.physics.newFixture(new_coin.body, new_coin.shape)
    new_coin.fixture:setCategory(2)
    new_coin.fixture:setMask(1)

    function new_coin.draw()
        love.graphics.setColor(new_coin.color)
        love.graphics.circle(
            "fill",
            new_coin.body:getX(), new_coin.body:getY(),
            new_coin.shape:getRadius()
        )
        love.graphics.setColor(love.graphics.getBackgroundColor())
        love.graphics.circle(
            "fill",
            new_coin.body:getX(), new_coin.body:getY(),
            new_coin.shape:getRadius() / 2
        )
        love.graphics.setColor(default_love_color)
    end

    return new_coin
end

return coin
