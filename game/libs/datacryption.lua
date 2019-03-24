game.libs.datacryption = {}

function game.libs.datacryption.tablejson(a)
    local b = "{" local count = 0
    for k,v in pairs(a) do count = count + 1
        local z = tostring(k)
        if type(k)=="string" then
            z = "\""..z.."\""
        end
        if type(v)=="table" then
            b = b..z..":"..game.libs.datacryption.tablejson(v,false)
        else
            if type(v)=="string" then
                b = b..z..":\""..v.."\""
            else
                b = b..z..":"..tostring(v)
            end
        end
        local _,cnt = game.count(a)
        if count<cnt then
            b = b..","
        end
    end
    return b.."}"
end
function game.libs.datacryption.jsontable(a)
    local b,c,d,e,f,g = {},{},2,0,true,0 local count = 0
    for k,v in pairs(game.error(game.explode(a))) do
        if k>1 and k<string.len(a) then
            if v==":" and f then
                e = k
                f = false
            end
            if v=="{" then g = g + 1 elseif v=="}" then g = g - 1 end
            if v=="," and g==0 then
                local h = tonumber(string.sub(a,d,e-1)) or string.sub(a,d+1,e-2)
                local i = tonumber(string.sub(a,e+1,k-1)) or string.sub(a,e+1,k-1)
                if string.sub(i,1,1)=="\"" and string.sub(i,-1,-1)=="\"" then i = string.sub(i,2,-2) end
                c[h] = i
                d = k+1 f = true
            end
            if k==string.len(a)-1 then
                local h = tonumber(string.sub(a,d,e-1)) or string.sub(a,d+1,e-2)
                local i = tonumber(string.sub(a,e+1,k)) or string.sub(a,e+1,k)
                if string.sub(i,1,1)=="\"" and string.sub(i,-1,-1)=="\"" then i = string.sub(i,2,-2) end
                c[h] = i
                d = k+1 f = true
            end
        end
    end count = 0
    for k,v in pairs(c) do count = count + 1
        if string.sub(tostring(v),1,1)=="{" then
            c[k] = game.libs.datacryption.jsontable(v)
        end
    end b = c
    return b
end


local fiik = {
    ["A1"] = {
        ["data"] = {},
        ["name"] = "",
        ["icon"] = ""
    }
}

for i=1,25 do
    for n=1,25 do
        local rn = math.random(1,5)
        fiik[i.."|"..n] = {
            ["data"] = {},
            ["name"] = "",
            ["icon"] = string.sub("FMGWD",rn,rn)
        }
    end
end

local fcck = {}
for n=1,7 do
    for i=1,5 do
        fcck[n.."|"..i] = {}
        -- for g=1,4 do

        -- end
    end
end

local fuuk = {}
for n=1,7 do
    for i=1,5 do
        fuuk[n.."|"..i] = {}
        -- for g=1,4 do

        -- end
    end
end

local idfk = {
    ["ply"] = {hp=100,xy={0,0}},
    ["inv"] = fcck,
    ["equ"] = fuuk,
    ["map"] = fiik
}

game.libs.mainmenu.default = game.libs.datacryption.tablejson(idfk)
if game.error(game.file.exists("data/settings.dat")) then else game.file.write("data/settings.dat",game.libs.datacryption.tablejson({map=21,m2=false})) end