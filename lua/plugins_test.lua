M ={}

M.get_plugins = function(opts)
    plugins=require("plugins.ui")
    return plugins
end

M.setup = function(opts) 
    require("plugins.keymaps_and_options")
    opts = opts or {}
    print("plugins_test.lua!!!!")
    print(opts.a)
    return require("plugins.ui").setup(opts)
end

return M
