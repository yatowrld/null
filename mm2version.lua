local scriptUrl = "https://pastefy.app/G21EwYfl/raw"

pcall(function()
    local response = game:HttpGet(scriptUrl)
    local cleanedSource = response
    
    if cleanedSource:sub(1, 4) == "HTTP" then
        local bodyStart = cleanedSource:find("\r\n\r\n")
        if bodyStart then
            cleanedSource = cleanedSource:sub(bodyStart + 4)
        end
    end

    local func = loadstring(cleanedSource)
    if func then
        func()
    end
end)
