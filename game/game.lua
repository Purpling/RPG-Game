game = {}
game.libs = {}
game.file = {}
game.hook = {}
game.info = {}


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
    
    local c = nil
    if a==nil then
    elseif a==false then
    elseif a==true then
        c = b
    else

    end
    return c
end

function game.file.run(a)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    local b,c = os.execute("open "..a)
    if b==1 then b,c = os.execute("xdg-open "..a) end
    if b==1 then b,c = os.execute("start "..a) end
    return b,c
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
    local b = io.open(a,"w") b:write("","w") io.close(b)
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
    local c = io.open(a,"w") c:write(b,"") io.close(c)
    return true,c
end

function game.file.append(a,b)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    if not type(b)=="string" and not type(b)=="number" then return nil,"Arg2 is not a string." end
    local c = io.open(a,"a") c:write(b,"") io.close(c)
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
    local b = io.open(a,"w") b:write("","w") io.close(b)
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

game.hook.call = {}
function game.hook.request()
    io.flush()
    return true,io.read()
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

a,b = game.file.exists("mods") if not a then
    local slots = {["head"]=true,["chest"]=true,["legs"]=true,["boots"]=true,["gloves"]=true,["primary"]=true,["secondary"]=true,["cape"]=true,["ring"]=true,["neck"]=true,["quiver"]=true}
    game.mods = {}
    
end





game.libs.mainmenu.start()