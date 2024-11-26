M ={}
print("plugins_test/init.lua")
M.get_plugins = function(opts)
    plugins=require("plugins.ui")
    return plugins
end
return M