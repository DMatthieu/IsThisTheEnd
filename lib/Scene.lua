--Création de la classe Scene
local class = require("lib.Class")
local Scene = class:derive("Scene")

function Scene:new(scene_manager)
    self.scene_manager = scene_manager
end

function Scene:enter()

end

function Scene:update(dt)

end

function Scene:draw()

end

function Scene:exit()

end






return Scene