#!/bin/lua


function generate_password(args)

    -- DECLARE PASSWORD GLOBAL TO FUNCTION
    local password = ""

    -- REGENERATE MATH.RANDOM SEED
    math.randomseed(os.time())

    -- GENERATE PASSWORD OF VAR LENGTH
    for i = 1, args["length"], 1 do
        local rchars = {
            string.char(math.random(65, 65 + 25)),
            string.char(math.random(65, 65 + 25)):lower(),
            tostring(math.random(1, 9))
        }

        if special then
            schars = "!@#$%^&*"
            local _ = math.random(1, #schars)
            schar = string.sub(schars, _, _)
            table.insert(rchars, schar)
        end

        -- UPDATE PASSWORD
        password = password .. rchars[math.random(#rchars)]
    end
    return password
end


function main()

    -- BUILD EXPECTED ARGUMENTS
    local args = require("src.arguments")
    args:new()
    args:add_argument("length", 10)
    args:add_argument("special", false)

    -- PARSE PASSED ARGUMENTS
    local parser = require("src.parser")
    local args = parser.parse_arguments(arg, args)

    local password = generate_password(args)
    print(password)
end


main()
