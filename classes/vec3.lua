local Class = require("modules.classic")

local Vec3 = Class:extend()

function Vec3:new(x, y, z)
    self.x = x
    self.y = y
    self.z = z
end

function Vec3:get()
    return self.x, self.y, self.z
end



return Vec3