

--Actif = Pixel art net, Inactif = effet de flou
love.graphics.setDefaultFilter( "nearest" )

--test

--  ██████  █████  ██      ██      ██████   █████   ██████ ██   ██ ███████ 
-- ██      ██   ██ ██      ██      ██   ██ ██   ██ ██      ██  ██  ██      
-- ██      ███████ ██      ██      ██████  ███████ ██      █████   ███████ 
-- ██      ██   ██ ██      ██      ██   ██ ██   ██ ██      ██  ██       ██ 
--  ██████ ██   ██ ███████ ███████ ██████  ██   ██  ██████ ██   ██ ███████ 
function love.load()
end

function love.update(dt)
end

function love.draw()
end

function love.keypressed(key)
    check_key_current_screen(key)
end

-- ███████  ██████ ████████     ██████  ███████ ██████  ███████  ██████  ███████ 
-- ██      ██         ██        ██   ██ ██      ██   ██ ██      ██    ██ ██      
-- █████   ██         ██        ██████  █████   ██████  ███████ ██    ██ ███████ 
-- ██      ██         ██        ██      ██      ██   ██      ██ ██    ██      ██ 
-- ██       ██████    ██        ██      ███████ ██   ██ ███████  ██████  ███████ 