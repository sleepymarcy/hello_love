local default_love_color = { love.graphics.getColor() }

local platform = {}
local default_platform_color = { 1, 1, 1 }

function platform.new(x, y, width, height, color)
    local new_platform = {}

    new_platform.color = color or default_platform_color
    x = x or (10 * U)
    y = y or (10 * U)
    new_platform.width = width or (6 * U)
    new_platform.height = height or (0.5 * U)


    new_platform.shape = love.physics.newRectangleShape(new_platform.width, new_platform.height)
    new_platform.body = love.physics.newBody(WORLD, x, y, "static")
    new_platform.fixture = love.physics.newFixture(new_platform.body, new_platform.shape)
    new_platform.fixture:setFriction(0.4)

    function new_platform.vertices()
        return { new_platform.body:getWorldPoints(new_platform.shape:getPoints()) }
    end

    function new_platform.draw()
        love.graphics.setColor(new_platform.color)
        love.graphics.polygon("fill", new_platform.vertices())
        love.graphics.setColor(default_love_color)
    end

    return new_platform
end

return platform
