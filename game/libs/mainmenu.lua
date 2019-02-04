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
            game.file.write(a,"")
            -- load the profile
        else
            game.libs.mainmenu.new()
        end
    end

    game.clear()
    local a,_ = game.file.exists("data/save1.dat")
    local b,_ = game.file.exists("data/save2.dat")
    local c,_ = game.file.exists("data/save3.dat")
    local s1,s2,s3 = "     Empty      ","     Empty      ","     Empty      "
    if a then s1 = "     Save1      " end
    if b then s2 = "     Save2      " end
    if c then s3 = "     Save3      " end
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
    if d=="1" then
        if a then
            overwrite("data/save1.dat")
            -- load the profile
        else
            game.file.write("data/save1.dat","")
            -- load the profile
        end
    elseif d=="2" then
        if b then
            overwrite("data/save2.dat")
            -- load the profile
        else
            game.file.write("data/save2.dat","")
            -- load the profile
        end
    elseif d=="3" then
        if c then
            overwrite("data/save3.dat")
            -- load the profile
        else
            game.file.write("data/save3.dat","")
            -- load the profile
        end
    elseif d=="4" then
        game.libs.mainmenu.start()
    else
        game.libs.mainmenu.new()
    end
end

function game.libs.mainmenu.load()
    game.clear()
    local a,_ = game.file.exists("data/save1.dat")
    local b,_ = game.file.exists("data/save2.dat")
    local c,_ = game.file.exists("data/save3.dat")
    local s1,s2,s3 = "     Empty      ","     Empty      ","     Empty      "
    if a then s1 = "     Save1      " end
    if b then s2 = "     Save2      " end
    if c then s3 = "     Save3      " end
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
    if d=="1" then
        if a then
        else
            game.libs.mainmenu.load()
        end
    elseif d=="2" then
        if b then
        else
            game.libs.mainmenu.load()
        end
    elseif d=="3" then
        if c then
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

end

function game.libs.mainmenu.editor()
end

function game.libs.mainmenu.start()
    game.clear()
    print("+---------------------+")
    print("|         Game        |")
    print("|      By Zephri      |")
    print("+---------------------+")
    print("| 1:      New         |")
    print("| 2:      Load        |")
    print("| 3:     Options      |")
    print("| 4:     Editor       |")
    print("| 5:      Quit        |")
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
    else
        game.libs.mainmenu.start()
    end
end