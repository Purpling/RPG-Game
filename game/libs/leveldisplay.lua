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
    local s = game.libs.datacryption.jsontable(game.error(game.file.read("data/settings.dat")))
    local c = game.libs.leveldisplay.generatemap(b["map"])
    local x = {} if s.map>25 then for i=1,s.map do x[i] = "" end else for i=1,25 do x[i] = "" end end

    --Map
    local line = "=====          "
    for i=1,s.map do line = "===="..line end
    for i=1,s.map do
        x[((i*2)-1)+2] = line x[(i*2)+2] = ""
        for k,v in pairs(game.error(game.explode("ABCDEFGHIJKLMNOPQRSTUVWXYZ"))) do
            if k<=s.map then
                local w = c[(i+b["ply"].xy[1]).."|"..(k+b["ply"].xy[2])] or "?"
                if i==math.ceil(s.map/2) and k==math.ceil(s.map/2) then
                    x[(i*2)+2] = x[(i*2)+2].."["..w.."]|"
                else
                    x[(i*2)+2] = x[(i*2)+2].." "..w.." |"
                end
            end
        end
        local y = "|"..i if string.len(y)<3 then y = "|0"..string.sub(y,2) end x[(i*2)+2] = y.." |"..x[(i*2)+2].."          "
    end
    x[1] = line
    x[2] = "|00 |"
    for k,v in pairs(game.error(game.explode("ABCDEFGHIJKLMNOPQRSTUVWXYZ"))) do
        if k<=s.map then
            x[2] = x[2].." "..v.." |"
        end
    end
    x[2] = x[2].."          "
    x[s.map+2] = line

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
    if s.map>25 then
        x[(7*7)-4] = x[(7*7)-4].."+-------------------------------------------+"
        x[(7*7)-3] = x[(7*7)-3].."\\___________________________________________/"
    else
        x[(7*7)-4] = "+-------------------------------------------+"
        x[(7*7)-3] = "\\___________________________________________/"
        for i=1,15+(s.map*4) do
            x[(7*7)-4] = " "..x[(7*7)-4]
            x[(7*7)-3] = " "..x[(7*7)-3]
        end
    end

    --Equ
    if s.m2==true then
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
    end

    game.clear() for k,v in pairs(x) do print(v) end
    game.help.menu = "libs.leveldisplay.displaymap"
    game.help.list["libs.leveldisplay.displaymap"] = {}
    game.help.expl["libs.leveldisplay.displaymap"] = {}
    game.help.list["libs.leveldisplay.displaymap"]["quit"] = "This goes back to the mainmenu."
    game.help.expl["libs.leveldisplay.displaymap"]["quit"] = {"quit"}
    game.help.list["libs.leveldisplay.displaymap"]["move"] = "Moves your position in the specified direction."
    game.help.expl["libs.leveldisplay.displaymap"]["move"] = {"move up","move down","move left","move right"}
    io.flush() local z = io.read()
    if string.sub(z,1,4)=="move" then
        if string.sub(z,6)=="up" or string.sub(z,6)=="u" then
            b["ply"].xy[1] = b["ply"].xy[1] - 1
            game.file.write(a,game.libs.datacryption.tablejson(b))
            game.libs.leveldisplay.displaymap(a)
        elseif string.sub(z,6)=="down" or string.sub(z,6)=="dw" or string.sub(z,6)=="dn" or string.sub(z,6)=="d" then
            b["ply"].xy[1] = b["ply"].xy[1] + 1
            game.file.write(a,game.libs.datacryption.tablejson(b))
            game.libs.leveldisplay.displaymap(a)
        elseif string.sub(z,6)=="left" or string.sub(z,6)=="lf" or string.sub(z,6)=="lt" or string.sub(z,6)=="l" then
            b["ply"].xy[2] = b["ply"].xy[2] - 1
            game.file.write(a,game.libs.datacryption.tablejson(b))
            game.libs.leveldisplay.displaymap(a)
        elseif string.sub(z,6)=="right" or string.sub(z,6)=="rg" or string.sub(z,6)=="rt" or string.sub(z,6)=="r" then
            b["ply"].xy[2] = b["ply"].xy[2] + 1
            game.file.write(a,game.libs.datacryption.tablejson(b))
            game.libs.leveldisplay.displaymap(a)
        else
            game.libs.leveldisplay.displaymap(a)
        end
    elseif string.sub(z,1,4)=="quit" then
        game.libs.mainmenu.start()
    elseif string.sub(z,1,4)=="help" then
        game.help.prnt(string.sub(z,6))
        game.libs.leveldisplay.displaymap(a)
    else
        game.libs.leveldisplay.displaymap(a)
    end
end