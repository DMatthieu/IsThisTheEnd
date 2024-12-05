--Création de la classe SceneManager
local class = require("lib.Class")
local Scene = require("lib.Scene")
local SceneManager = class:derive("lib.SceneManager")

--Constructeur de la classe SceneManager
function SceneManager:new(scene_dir, scenes)
    self.scenes = {}
    self.scene_dir = scene_dir

    if not scene_dir then scene_dir = "" end

    if scenes ~= nil then
        assert(type(scenes)=="table", "parameter scenes must be a table !")
        for i=1, #scenes do
            local M = require(scene_dir.."."..scenes[i])
            assert(M:is(Scene), "File: ".. scene_dir .. "." .. scenes[i] .. ".lua is not of type Scene!" )
            self.scenes[scenes[i]] = M(self)
        end

    end
    self.previous_scene = nil
    self.current_scene = nil

end

--Add a new Scene to the table Scenes
function SceneManager:add(scene)

end

function SceneManager:remove(scene)

end

-- Switch from current scene to the given next scene
function SceneManager:switch(next_scene)
    print("switch called")
    if self.current_scene then
        self.current_scene:exit()
    end

    if next_scene then
        --print("Param: "..next_scene)
        self.previous_scene = self.current_scene
        self.current_scene = next_scene
    end
end

--give a list of all scenes names the scene manager has in memory
function SceneManager:list_scenes()

end



function SceneManager:update(dt)
    if self.current_scene then
        self.scenes[self.current_scene]:update(dt)
    end
end

function SceneManager:draw()
    if self.current_scene then
        self.scenes[self.current_scene]:draw()
    end
end

return SceneManager