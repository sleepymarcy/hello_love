local LCS = require("modules.LCS")

local PhysicalObject = LCS.class.abstract()

function PhysicalObject:init(body, shape, color, drawing_function)
    assert(
        body and shape and color and drawing_function
    )

    self.body = body
    self.shape = shape
    self.fixture = love.physics.newFixture(body, shape)
    self.color = color
    self.draw = drawing_function

end

return PhysicalObject
