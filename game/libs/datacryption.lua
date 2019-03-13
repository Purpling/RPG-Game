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
                c[tonumber(string.sub(a,d,e-1)) or string.sub(a,d+1,e-2)] = tonumber(string.sub(a,e+1,k-1)) or string.sub(a,e+1,k-1)
                d = k+1 f = true
            end
            if k==string.len(a)-1 then
                c[tonumber(string.sub(a,d,e-1)) or string.sub(a,d+1,e-2)] = tonumber(string.sub(a,e+1,k)) or string.sub(a,e+1,k)
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

local _,foon = game.explode("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

for i=1,15 do
    for k,v in pairs(foon) do
        local ll = "FMGWD"
        local rn = math.random(1,5)
        local rt = string.sub(ll,rn,rn)
        fiik[v..i] = {
            ["data"] = {},
            ["name"] = "",
            ["icon"] = rt
        }
    end
end

local idfk = {
    ["map"] = fiik
}

game.libs.mainmenu.default = game.libs.datacryption.tablejson(idfk)