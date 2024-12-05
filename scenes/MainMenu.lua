local Scene = require("lib.Scene")

local MainMenu = Scene:derive("MainMenu")

function MainMenu:update(dt)

end

function MainMenu:draw()
    --print("main menu")
    love.graphics.print("Main Menu",20,20)
end


return MainMenu
