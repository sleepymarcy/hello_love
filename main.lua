local my_world = love.physics.newWorld()
local player_position_x = 100
local player_position_y = 100

local player_shape = love.physics.newRectangleShape(20,60)
local player_body = love.physics.newBody(my_world, player_position_x, player_position_y, "dynamic")

local player = love.physics.newFixture(player_body, player_shape)

local px, py = player:getBody():getPosition()
local position = {player:getShape():getPoints()}

local player_polygon = {}
local is_odd = true;
for i, val in ipairs({player:getShape():getPoints()}) do
    if is_odd then
        player_polygon[i] = val + px
    else
        player_polygon[i] = val + py
    end
    is_odd = not is_odd
end

-- local time = love.timer.getTime()

function love.draw()
    love.graphics.polygon("fill", player_polygon)
    -- love.graphics.print(time)

    -- for i, ch in ipairs(player_polygon) do
    --     love.graphics.print(" ".. ch, 10, 10*i)
    -- end

    -- love.graphics.rectangle("line", p_bb[1], p_bb[2], p_bb[3], p_bb[4])
    -- love.graphics.print("V1: " .. x1 .. " " .. y1, 10, 10)
    -- love.graphics.print("V2: " .. x2 .. " " .. y2, 10, 30)
    -- love.graphics.print("V3: " .. x3 .. " " .. y3, 10, 50)
    -- love.graphics.print("V4: " .. x4 .. " " .. y4, 10, 70)
    -- love.graphics.polygon("fill", x1, y1, x2, y2, x3, y3, x4, y4)
end