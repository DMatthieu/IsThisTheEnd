local SM = require("lib.SceneManager")

--Actif = Pixel art net, Inactif = effet de flou
love.graphics.setDefaultFilter( "nearest" )


local sm


--  ██████  █████  ██      ██      ██████   █████   ██████ ██   ██ ███████ 
-- ██      ██   ██ ██      ██      ██   ██ ██   ██ ██      ██  ██  ██      
-- ██      ███████ ██      ██      ██████  ███████ ██      █████   ███████ 
-- ██      ██   ██ ██      ██      ██   ██ ██   ██ ██      ██  ██       ██ 
--  ██████ ██   ██ ███████ ███████ ██████  ██   ██  ██████ ██   ██ ███████ 
function love.load()
    --On donne l'accès au repertoire "scenes" au SceneManager instancié
    sm = SM("scenes", {"MainMenu"})
    sm:switch("MainMenu")
end

function love.update(dt)
    sm:update(dt)
end

function love.draw()
    sm:draw()
end

function love.keypressed(key)
    check_key_current_screen(key)
end

-- ███████  ██████ ████████     ██████  ███████ ██████  ███████  ██████  ███████ 
-- ██      ██         ██        ██   ██ ██      ██   ██ ██      ██    ██ ██      
-- █████   ██         ██        ██████  █████   ██████  ███████ ██    ██ ███████ 
-- ██      ██         ██        ██      ██      ██   ██      ██ ██    ██      ██ 
-- ██       ██████    ██        ██      ███████ ██   ██ ███████  ██████  ███████ 