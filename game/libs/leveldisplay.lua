game.libs.leveldisplay = {}

function game.libs.leveldisplay.generatemap(a)
    local b = {}
    for k,v in pairs(a) do
        b[k] = v["icon"]
    end
    return b
end

function game.libs.leveldisplay.displaymap(a)
    local b = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    local _,c = game.file.read(a)
    c = game.libs.datacryption.jsontable(c)
    local d = game.libs.leveldisplay.generatemap(c["map"])
    local x = {}
    for i=1,15 do x[i] = "|"
        for k,v in pairs(game.error(game.explode(b))) do
            x[i] = x[i]..string.sub(d[v..i],2,string.len(d[v..i])-1).."|"
        end
    end
    game.clear()
    print("00|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|")
    for k,v in pairs(x) do
        print("=======================================================")
        local changeme = k if string.len(changeme)<2 then changeme = "0"..changeme end
        print(changeme..v)
    end
    io.flush() local z = io.read()
    if string.sub(z,1,4)=="move" then

    elseif string.sub(z,1,4)=="quit" then
        game.libs.mainmenu.start()
    else
        game.libs.leveldisplay.displaymap(a)
    end
end