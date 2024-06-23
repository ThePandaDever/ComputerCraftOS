local file = fs.open("build.sys","r")
local contents = file.readAll()
file.close()
 
function split(inputstr, sep)
    if sep == "%s" then
        sep = "%s"
    end
    local t = {}
    for str in string.gmatch(inputstr,"([^"..sep.."]+)") do
        table.insert(t,str)
    end
    return t
end
 
 
for _i1,filetext in ipairs(split(contents,"¾")) do
    tokens = split(filetext,"½")
    
    local f = fs.open(tokens[1],"w")
    f.write(tokens[2])
    f.close()
end
