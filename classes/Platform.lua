local RectangularObject = require("classes.RectangularObject")

local default_width = 6 * U
local default_height = 0.5 * U
local default_color = { 255/255, 97/255, 158/255 }

local Platform = RectangularObject:extends()

function Platform:init(world, px, py --[[, width, height, color, type]])
    -- function RectangularObject:init(
    --     world,
    --     px, py,
    --     width, height,
    --     color,
    --     type
    -- )
    Platform:super("init",
        world,
        px, py,
        default_width, default_height,
        default_color
    -- width or default_width, height or default_height,
    -- color or default_color,
    -- type or "static"
    )
end

Platform.generate_platforms = function(world, map)
    local platforms = {}
    for i, coords in ipairs(map) do
        table.insert(
            platforms,
            Platform(
                world,
                coords[1],
                coords[2]
            )
        )
    end

    -- local tablasdfae = {}
    -- tablasdfae.body = {}
    -- tablasdfae.body.getX = function()
    --     return "gotYa"
    -- end

    -- table.insert(platforms, tablasdfae)

    return platforms
end

return Platform
