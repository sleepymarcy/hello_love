-- for Love2d project to work u need main.lua

-- stuff u want to be alive for the whole program
-- should be declared as local, before love.load()
local important_variable
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
end

-- love handles game loop for you.
-- u just need to define functions that will be ran in said loop

-- this should only contain stuff that are to be done in-between frames
-- like handle logic, input etc
function love.update(dt)
end

-- and here you just build your frame
function love.draw()
end