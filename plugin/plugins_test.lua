M ={}

print("plugin/plugins_test.lua!!!! no fun")
M.setup = function(opts) 
    opts = opts or {}
    print("plugin/plugins_test.lua!!!!")
    print(vim.inspect(opts))
end

return M
