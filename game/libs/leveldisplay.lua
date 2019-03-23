game.libs.leveldisplay = {}

function game.libs.leveldisplay.generatemap(a)
    local b = {}
    for k,v in pairs(a) do
        b[k] = v["icon"]
    end
    return b
end

function game.libs.leveldisplay.displaymap(a)
    local b = game.libs.datacryption.jsontable(game.error(game.file.read(a)))
    local c = game.libs.leveldisplay.generatemap(b["map"])
    local x = {}

    --Map
    for i=1,30 do x[(i*2)+2] = " | "
        x[((i*2)-1)+2] = "=============================================================================================================          "
        for k,v in pairs(game.error(game.explode("ABCDEFGHIJKLMNOPQRSTUVWXYZ"))) do
            x[(i*2)+2] = x[(i*2)+2]..c[v..i].." | "
        end
        y = "|"..i if string.len(y)<3 then y = "|0"..string.sub(y,2) end x[(i*2)+2] = y..x[(i*2)+2].."         "
    end
    game.clear()
    x[1] = "=============================================================================================================          "
    x[2] = "|00 | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z |          "
    x[game.error(game.count(x))+1] = "=============================================================================================================          "

    --Inv
    x[1] = x[1].." ___________________________________________ "
    x[2] = x[2].."/                 Inventory                 \\"
    x[3] = x[3].."+-------------------------------------------+"
    for n=1,7 do
        for i=1,5 do
            x[3-i+(6*n)] = x[3-i+(6*n)].."|"
            for g=1,4 do
                local m = b["inv"][n.."|"..i][g] or "          "
                x[3-i+(6*n)] = x[3-i+(6*n)]..m
                if g<4 then x[3-i+(6*n)] = x[3-i+(6*n)].."|" end
            end
            x[3-i+(6*n)] = x[3-i+(6*n)].."|"
        end
        if n<7 then x[3+(6*n)] = x[3+(6*n)].."+-------------------------------------------+" end
    end
    x[(7*7)-4] = x[(7*7)-4].."+-------------------------------------------+"
    x[(7*7)-3] = x[(7*7)-3].."\\___________________________________________/"

    --Equ
    x[1] = x[1].."           ___________________________________________ "
    x[2] = x[2].."          /                 Equipment                 \\"
    x[3] = x[3].."          +-------------------------------------------+"
    for n=1,7 do
        for i=1,5 do
            x[3-i+(6*n)] = x[3-i+(6*n)].."          |"
            for g=1,4 do
                local m = b["equ"][n.."|"..i][g] or "          "
                x[3-i+(6*n)] = x[3-i+(6*n)]..m
                if g<4 then x[3-i+(6*n)] = x[3-i+(6*n)].."|" end
            end
            x[3-i+(6*n)] = x[3-i+(6*n)].."|"
        end
        if n<7 then x[3+(6*n)] = x[3+(6*n)].."          +-------------------------------------------+" end
    end
    x[(7*7)-4] = x[(7*7)-4].."          +-------------------------------------------+"
    x[(7*7)-3] = x[(7*7)-3].."          \\___________________________________________/"

    for k,v in pairs(x) do print(v) end
    io.flush() local z = io.read()
    if string.sub(z,1,4)=="move" then

    elseif string.sub(z,1,4)=="quit" then
        game.libs.mainmenu.start()
    else
        game.libs.leveldisplay.displaymap(a)
    end
end