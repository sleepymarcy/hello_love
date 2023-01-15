local Class = require("modules.classic")

local Vec2 = Class:extend()

function Vec2:new(x, y)
    self.x = x
    self.y = y    
end

function Vec2:get()
    return self.x, self.y
end

return Vec2