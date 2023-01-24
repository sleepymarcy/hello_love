local Fixture = require("classes.Base")

local Rectangular = Fixture:extends()

-- PhysicalObject:init(body, shape, color, drawing_function)
function Rectangular:init(px, py, width, height, color)
    Rectangular:super("init",
    love.physics.newBody(px, py),
    love.physics.newRectangleShape(width, height),
    color or {0,0,0} 

 )
end

return Rectangular