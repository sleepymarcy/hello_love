-- for Love2d project to work u need main.lua

-- stuff u want to be alive for the whole program
-- should be declared as local, before love.load()
local important_variable
local rectangle_coordinates
-- ACHTUNG! declared, not initialised.
-- better to let love decide when to initialise stuff

-- to tell love to do something before the loop begins,
-- for example INITIALISE stuff declared above,
-- u overload a specific function:
function love.load()
    -- here u just tell what has to be done ONCE before the loop starts

    -- ACHTUNG! stuff declared as local here are gonna die
    -- at the _end_ of this scope
    
    local variable = 3 -- this has no effect outside this function
    important_variable = 13 -- this is going to be alive later.

    rectangle_coordinates = {
        10, 10,  -- x, y of top left corner
        100, 50 -- width and height of the rectangle
    }
end

-- love handles game loop for you.
-- u just need to define functions that will be ran in said loop

-- this should only contain stuff that are to be done in-between frames
-- like handle logic, input etc
function love.update(dt)
    -- let's make the rectangle move slowly
    rectangle_coordinates[1] = rectangle_coordinates[1] + 1
    rectangle_coordinates[2] = rectangle_coordinates[2] + 1

    -- these guys below are ACTUALY!!!!! width and height
    -- so rectangle will resize
    rectangle_coordinates[3] = rectangle_coordinates[3] + 1
    rectangle_coordinates[4] = rectangle_coordinates[4] + 1
    -- very stupid way to do it, but well, u have to start with something :)
end

-- and here you just build your frame
function love.draw()
    love.graphics.rectangle(
        "fill",
        rectangle_coordinates[1], rectangle_coordinates[2],
        rectangle_coordinates[3], rectangle_coordinates[4]
    )
end