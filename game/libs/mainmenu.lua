game.libs.mainmenu = {}

function game.libs.mainmenu.new()
    local function overwrite(a)
        print("+---------------------+")
        print("|      Overwrite?     |")
        print("+---------------------+")
        print("| 1:      Yes         |")
        print("| 2:      No          |")
        print("+---------------------+")
        io.flush() local d = io.read()
        if d=="1" then
            game.file.write(a,game.libs.mainmenu.default)
            game.libs.leveldisplay.displaymap(a)
        else
            game.libs.mainmenu.new()
        end
    end

    local a,_ = game.file.exists("data/save1.dat")
    local b,_ = game.file.exists("data/save2.dat")
    local c,_ = game.file.exists("data/save3.dat")
    local s1,s2,s3 = "     Empty      ","     Empty      ","     Empty      "
    if a then s1 = "     Save1      " end
    if b then s2 = "     Save2      " end
    if c then s3 = "     Save3      " end
    game.clear()
    print("+---------------------+")
    print("|      New save       |")
    print("+---------------------+")
    print("| 1: "..s1.." |")
    print("| 2: "..s2.." |")
    print("| 3: "..s3.." |")
    print("+---------------------+")
    print("| 4:      Back        |")
    print("+---------------------+")
    io.flush() local d = io.read()
    local e = {["1"]=a,["2"]=b,["2"]=c}
    if d=="1" or d=="2" or d=="3" then
        if e[d] then
            overwrite("data/save"..d..".dat")
        else
            game.file.write("data/save"..d..".dat",game.libs.mainmenu.default)
            game.libs.leveldisplay.displaymap("data/save"..d..".dat")
        end
    elseif d=="4" then
        game.libs.mainmenu.start()
    else
        game.libs.mainmenu.new()
    end
end

function game.libs.mainmenu.load()
    local a,_ = game.file.exists("data/save1.dat")
    local b,_ = game.file.exists("data/save2.dat")
    local c,_ = game.file.exists("data/save3.dat")
    local s1,s2,s3 = "     Empty      ","     Empty      ","     Empty      "
    if a then s1 = "     Save1      " end
    if b then s2 = "     Save2      " end
    if c then s3 = "     Save3      " end
    game.clear()
    print("+---------------------+")
    print("|      Load save      |")
    print("+---------------------+")
    print("| 1: "..s1.." |")
    print("| 2: "..s2.." |")
    print("| 3: "..s3.." |")
    print("+---------------------+")
    print("| 4:      Back        |")
    print("+---------------------+")
    io.flush() local d = io.read()
    local e = {["1"]=a,["2"]=b,["2"]=c}
    if d=="1" or d=="2" or d=="3" then
        if e[d] then
            game.libs.leveldisplay.displaymap("data/save"..d..".dat")
        else
            game.libs.mainmenu.load()
        end
    elseif d=="4" then
        game.libs.mainmenu.start()
    else
        game.libs.mainmenu.load()
    end
end

function game.libs.mainmenu.options()
    print("Not done yet.") game.pause() game.libs.mainmenu.start()
end

function game.libs.mainmenu.editor()
    print("Not done yet.") game.pause() game.libs.mainmenu.start()
end

function game.libs.mainmenu.mods()
    game.clear()
    if game.file.exists("mods") then
        local a = game.error(game.file.getdirs(game.cd.."/mods"))
        local c = 0
        print("+---------------------+")
        print("|         Mods        |")
        print("+---------------------+")
        if game.file.exists("mods/order.txt") then
            local b = game.libs.datacryption.jsontable(game.error(game.file.read("mods/order.txt")))
            for k,v in pairs(b) do c = c + 1
                if string.len(v)>(string.len(c)+15) then v = string.sub(v,1,(string.len(c)+15)).."..." end
                if string.len(v)<(string.len(c)+15) then for i=1,(string.len(c)+15)-string.len(v) do v = v.." " end end
                print("| "..c..": "..v.." |")
                a[k] = nil
            end
            for k,v in pairs(a) do c = c + 1
                if string.len(v)>(string.len(c)+15) then v = string.sub(v,1,(string.len(c)+15)).."..." end
                if string.len(v)<(string.len(c)+15) then for i=1,(string.len(c)+15)-string.len(v) do v = v.." " end end
                print("| "..c..": "..v.." |")
                b[game.error(game.count(b))+1] = v
            end
            if game.error(game.count(a))>0 then
                game.file.write("mods/order.txt",game.libs.datacryption.tablejson(b))
            end
        else
            game.clear()
            print("+---------------------+")
            print("|         Mods        |")
            print("+---------------------+")
            game.file.create("mods/order.txt")
            local z = {}
            for k,v in pairs(a) do c = c + 1
                if string.len(v)>(string.len(c)+15) then v = string.sub(v,1,(string.len(c)+15)).."..." end
                if string.len(v)<(string.len(c)+15) then for i=1,(string.len(c)+15)-string.len(v) do v = v.." " end end
                print("| "..c..": "..v.." |")
                z[game.error(game.count(z))+1] = v
            end
            game.file.write("mods/order.txt",game.libs.datacryption.tablejson(z))
        end c = c + 1
        print("+---------------------+")
        print("| "..c..":      Back        |")
        print("+---------------------+")
        io.flush() local a = io.read()
        if a==tostring(c) then
            game.libs.mainmenu.start()
        elseif string.sub(a,1,4)=="move" then
            local z = game.error(game.string2table(a," "))
            if tonumber(z[2])==nil or tonumber(z[3])==nil then else
                if tonumber(z[2])>0 and tonumber(z[3])>0 then
                    if tonumber(z[2])<c and tonumber(z[3])<c then
                        z[4] = game.libs.datacryption.jsontable(game.error(game.file.read("mods/order.txt")))
                        z[5] = z[4][tonumber(z[2])] z[4][tonumber(z[2])] = z[4][tonumber(z[3])] z[4][tonumber(z[3])] = z[5]
                        game.file.write("mods/order.txt",game.libs.datacryption.tablejson(z[4]))
                        game.libs.mainmenu.mods()
                    end
                end
            end
        elseif tonumber(a)==nil then
            game.libs.mainmenu.mods()
        else
            if tonumber(a)>0 and tonumber(a)<c then
                local c = game.libs.datacryption.jsontable(game.error(game.file.read("mods/order.txt")))[tonumber(a)]
                local b = game.mods[c] if string.len(c)>12 then c = string.sub(c,1,12).."..." end
                if string.len(c)<12 then for i=1,12-string.len(c) do c = c.." " end end
                if type(b.name)=="string" then else b.name = "No name." end
                if string.len(b.name)>14 then b.name = string.sub(b.name,1,14).."..." end
                if string.len(b.name)<14 then for i=1,14-string.len(b.name) do b.name = b.name.." " end end
                if type(b.disc)=="string" then else b.disc = "No discription." end
                -- if string.len(b.disc)>10 then b.disc = string.sub(b.disc,1,10).."..." end
                -- if string.len(b.disc)<10 then for i=1,10-string.len(b.disc) do b.disc = b.disc.." " end end
                if type(b.auth)=="string" then else b.auth = "No author." end
                if string.len(b.auth)>12 then b.auth = string.sub(b.auth,1,12).."..." end
                if string.len(b.auth)<12 then for i=1,12-string.len(b.auth) do b.auth = b.auth.." " end end
                game.clear()
                print("+---------------------+")
                print("| Folder: "..c.."|")
                print("| Name: "..b.name.."|")
                print("| Discription:        |\n'''''''''''''''''''''''\n"..b.disc)
                print(".......................")
                print("| Author: "..b.auth.."|")
                print("+---------------------+")
                game.pause()
                game.libs.mainmenu.mods()
            else
                game.libs.mainmenu.mods()
            end
        end
    else
        print("+---------------------+")
        print("|  No mods detected.  |")
        print("+---------------------+")
        game.pause()
        game.libs.mainmenu.start()
    end
end

function game.libs.mainmenu.start()
    game.clear()
    print("+---------------------+")
    print("|      RPG Game       |")
    print("|      By Zephri      |")
    print("+---------------------+")
    print("| 1:      New         |")
    print("| 2:      Load        |")
    print("| 3:     Options      |")
    print("| 4:     Editor       |")
    print("| 5:      Mods        |")
    print("| 6:      Quit        |")
    print("+---------------------+")
    io.flush() local a = io.read()
    if a=="1" then
        game.libs.mainmenu.new()
    elseif a=="2" then
        game.libs.mainmenu.load()
    elseif a=="3" then
        game.libs.mainmenu.options()
    elseif a=="4" then
        game.libs.mainmenu.editor()
    elseif a=="5" then
        game.libs.mainmenu.mods()
    elseif a=="6" then
    else
        game.libs.mainmenu.start()
    end
end