-- FIXME: this can blow right into my face
local is_touching_platform = false -- we've set it as local and pass as paramater to player.handle_input
local function beginContact(a, b, coll)
    local nx, ny = coll:getNormal()
    if ny ~= 0 then
        is_touching_platform = true
    end
end -- this doesn't check WHAT is being touched and BY WHAT

local function endContact(a, b, coll) is_touching_platform = false end

return {
    beginContact = beginContact,
    endContact = endContact
}
