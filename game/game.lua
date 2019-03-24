game = {}
game.libs = {}
game.file = {}
game.hook = {}
game.info = {}
game.help = {}



function game.exe2bool(a,b,c)
    if a==0 or b==0 or c==0 then
    return true else
    return false end
end

game.os = ""
if game.exe2bool(os.execute("ipconfig")) then game.os = "windows" end
if game.exe2bool(os.execute("ifconfig")) then game.os = "linux" end
-- if game.exe2bool(os.execute("")) then game.os = "mac" end

game.cd = ""
os.execute("cd >tmp")
local file = io.open("tmp","r")
game.cd = file:read()
file:close()
os.remove("tmp")



function game.string2table(a,z) z = z or "\n"
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    if not type(z)=="string" then return nil,"Arg2 is not a string." end
    local b,c,d = "",{},0
    for i=1,string.len(a) do
        if string.sub(a,i,i)==z then
            d = d + 1 c[d] = b b = ""
        else
            b = b..string.sub(a,i,i)
        end
    end if b=="" then else d = d + 1 c[d] = b end
    return true,c
end

function game.print(a,b)
    if not type(a)=="table" then return nil,"Arg1 is not a table." end
    if not type(b)=="number" then return nil,"Arg2 is not a number." end
    b = b or 0 local c = "" for i=1,b do c = c.."  " end local d = game.count(a)
    local e = 0 for k,v in pairs(a) do e = e + 1
        if type(v)=="table" then
            if type(v)=="string" then
                print(c.."\""..k.."\":{")
            else
                print(c..k..":{")
            end
            game.print(v,b+1)
            if e==d then
                print(c.."}")
            else
                print(c.."},")
            end
        else
            if e==d then
                print(c..k..":"..v)
            else
                print(c..k..":"..v..",")
            end
        end
    end
end

function game.count(a)
    if not type(a)=="table" then return nil,"Arg1 is not a table." end
    local b = 0
    for k,v in pairs(a) do
        b = b + 1
    end
    return true,b
end

function game.explode(a)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    local b = {}
    for i=1,string.len(a) do
        b[i] = string.sub(a,i,i)
    end
    return true,b
end

function game.clear()
    local a,b = os.execute("clear") if a==nil then
    a,b = os.execute("cls") if a==nil then
    for i = 1,25 do print("\n\n") end end end
    return true
end

function game.pause()
    print("Paused, press enter to unpause.") io.flush() local a = io.read() return true,a
end

function game.error(a,b)
    if not type(a)=="boolean" then return nil,"Arg1 is not a bool." end
    if a then
        return b
    else
        return nil
    end
end

function game.file.run(a)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    local b,c = false,nil
    if game.os=="mac" then b,c = os.execute("open "..a) end
    if game.os=="linux" then b,c = os.execute("xdg-open "..a) end
    if game.os=="windows" then b,c = os.execute("start "..a) end
    return b,c
end

function game.file.execute(a)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    os.execute(a.." >tmp")
    local b = io.open("tmp","r")
    local c = b:read("*a")
    b:close()
    os.remove("tmp")
    if c==nil then
        return false,c
    else
        return true,c
    end
end

function game.file.exists(a)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    local b,c = os.rename(a,a)
    if not b then print(c) b = false end
    return b,c
end

function game.file.directory(a)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    local b,c = os.execute("mkdir "..a)
    return b,c
end

function game.file.create(a)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    local b = io.open(a,"w") b:write("") io.close(b)
    return true,b
end

function game.file.temp()
    local a = io.tmpfile()
    return true,a
end

function game.file.read(a)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    local b = io.open(a,"r") local c = b:read() io.close(b)
    return true,c
end

function game.file.write(a,b)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    if not type(b)=="string" and not type(b)=="number" then return nil,"Arg2 is not a string." end
    local c = io.open(a,"w") c:write(b) io.close(c)
    return true,c
end

function game.file.append(a,b)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    if not type(b)=="string" and not type(b)=="number" then return nil,"Arg2 is not a string." end
    local c = io.open(a,"a") c:write(b) io.close(c)
    return true,c
end

function game.file.delete(a)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    local b,c = os.remove(a)
    if not b then print(c) end
    return b,c
end

function game.file.destroy(a)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    local b = io.open(a,"w") b:write("") io.close(b)
    local b,c = os.remove(a)
    if not b then print(c) end
    return b,c
end

function game.file.rename(a,b)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    if not type(b)=="string" then return nil,"Arg2 is not a string." end
    local c,d = os.rename(a,b)
    if not c then print(d) c = false end
    return c,d
end

function game.file.include(a)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    local b,c = pcall(dofile,a)
    if not b then print(c) end
    return b,c
end

function game.file.getfiles(a)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    local b = ""
    if game.os=="windows" then b = game.error(game.file.execute("dir \""..a.."\" /a:-d /b")) end
    -- if game.os=="linux" then b = game.file.execute("dir /a:-d /b") end
    -- if game.os=="mac" then b = game.file.execute("dir /a:-d /b") end
    return true,game.error(game.string2table(b))
end

function game.file.getdirs(a)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    local b = ""
    if game.os=="windows" then b = game.error(game.file.execute("dir \""..a.."\" /a:d /b")) end
    -- if game.os=="linux" then b = game.file.execute("dir /a:-d /b") end
    -- if game.os=="mac" then b = game.file.execute("dir /a:-d /b") end
    return true,game.error(game.string2table(b))
end

game.hook.call = {}
function game.hook.request()
    io.flush()
    return true,io.read()
end

game.help.menu = ""
game.help.list = {}
game.help.expl = {}
function game.help.prnt(a)
    game.clear()
    if game.help.list[game.help.menu]==nil then
        print("+---------------------+")
        print("|  Menu has no help.  |")
        print("+---------------------+")
    else
        if a==nil or a=="" then
            print("+---------------------+")
            print("| Menu commands list. |")
            print("+---------------------+")
            for k,v in pairs(game.help.list[game.help.menu]) do
                print("| "..k.." = "..v.." |")
            end
            print("+---------------------+")
        else print(a)
            if game.help.list[game.help.menu][a]==nil then
                print("+---------------------+")
                print("| Command has no help. |")
                print("+---------------------+")
            else
                local b = a
                if string.len(a)<19 then
                    for i=1,math.floor((19-string.len(a))/2) do b = " "..b end
                    for i=1,math.ceil((19-string.len(a))/2) do b = b.." " end
                end
                print("+---------------------+")
                print("| "..b.." |")
                print("+---------------------+")
                print("|     Discription:    |")
                local d = "|"
                for k,v in pairs(game.error(game.string2table(game.help.list[game.help.menu][a]," "))) do
                    if k==1 then d = d..v else
                    if string.len(v)<22-string.len(d) then d = d.." "..v else
                        if string.len(d)<22 then local s = string.len(d)
                            for i=1,22-s do d = d.." " end
                        end
                        print(d.."|") d = "|"..v
                    end end
                end
                if string.len(d)<22 then local s = string.len(d)
                    for i=1,22-s do d = d.." " end
                end print(d.."|")
                print("+---------------------+")
                print("|      Examples:      |")
                if game.help.expl[game.help.menu][a]==nil then else
                    for k,v in pairs(game.help.expl[game.help.menu][a]) do
                        local c = v
                        if string.len(v)<17-string.len(k) then
                            for i=1,math.floor(((17-string.len(k))-string.len(v))/2) do c = " "..c end
                            for i=1,math.ceil(((17-string.len(k))-string.len(v))/2) do c = c.." " end
                        end
                        print("| "..k..". "..c.." |")
                    end
                end
                print("+---------------------+")
            end
        end
    end
    game.pause()
end





game.info.head = {}
game.info.chest = {}
game.info.legs = {}
game.info.boots = {}
game.info.gloves = {}
game.info.primary = {}
game.info.secondary = {}
game.info.cape = {}
game.info.ring = {}
game.info.neck = {}
game.info.quiver = {}

local libs = {"mainmenu","leveldisplay","datacryption"}
a,b = game.file.exists("libs") if not a then return end
local rtn = false for k,v in pairs(libs) do
    local a,b = game.file.include("libs/"..v..".lua")
    if not a then rtn = true end
end
if rtn then return end

a,b = game.file.exists("logs") if not a then game.file.directory("logs") end
a,b = game.file.exists("data") if not a then game.file.directory("data") end

if game.file.exists("mods") then
    local slots = {["head"]=true,["chest"]=true,["legs"]=true,["boots"]=true,["gloves"]=true,["primary"]=true,["secondary"]=true,["cape"]=true,["ring"]=true,["neck"]=true,["quiver"]=true}
    game.mods = {}
    a = game.error(game.file.getdirs(game.cd.."/mods"))
    if game.file.exists("mods/order.txt") then
        local b = game.libs.datacryption.jsontable(game.error(game.file.read("mods/order.txt")))
        for k,v in pairs(b) do
            game.mods[v] = {}
            game.file.include("mods/"..v.."/mod.lua")
            a[k] = nil
        end
        for k,v in pairs(a) do
            game.mods[v] = {}
            game.file.include("mods/"..v.."/mod.lua")
        end
    else
        for k,v in pairs(a) do
            game.mods[v] = {}
            game.file.include("mods/"..v.."/mod.lua")
        end
    end
end





game.libs.mainmenu.start()