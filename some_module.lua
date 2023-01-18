local any_name = {}

function any_name.do_with_rect(cords_table)
    for i = 1, 4, 1 do
        cords_table[i] = cords_table[i] + 0.2
    end

    return cords_table
end


return any_name
