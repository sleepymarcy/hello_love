local module = {}

module.test = {
    "a",
    ar = function()
        print("arrrrr")
        return "pirat", 12
    end,
    23,
    function()
        print("hajo")
        return "siusiak"
    end
}

module[4] = "cztery"
module[12] = "12"
module.dzialaj = function(x)
    return x + 3
end

function module.dzialaj_tez(z)
        return z*z
end

return module