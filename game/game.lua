game = {}
game.libs = {}
game.file = {}
game.hook = {}
game.info = {}

function game.clear()
    local a,b = os.execute("clear") if a==1 then
    a,b = os.execute("cls") if a==1 then
    for i = 1,25 do print("\n\n") end end end
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
    local b = io.open(a,"w") io.close(b)
    return true,b
end

function game.file.write(a,b)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    if not type(b)=="string" and not type(b)=="number" then return nil,"Arg2 is not a string." end
    local c = io.open(a,"w") c:write(b,"w") io.close(c)
    return true,c
end

function game.file.append(a,b)
    if not type(a)=="string" then return nil,"Arg1 is not a string." end
    if not type(b)=="string" and not type(b)=="number" then return nil,"Arg2 is not a string." end
    local c = io.open(a,"a") c:write(b,"a") io.close(c)
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





local libs = {"mainmenu"}
a,b = game.file.exists("libs") if not a then return end
local rtn = false for k,v in pairs(libs) do
    local a,b = game.file.include("libs/"..v..".lua")
    if not a then rtn = true end
end
if rtn then return end

a,b = game.file.exists("logs") if not a then game.file.directory("logs") end
a,b = game.file.exists("data") if not a then game.file.directory("data") end

a,b = game.file.exists("mods") if not a then
    game.mods = {}
    -- add mod support here
end



game.libs.mainmenu.start()