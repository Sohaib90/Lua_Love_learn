--[[ 
    This game is Dot and Dashes. 
    You have to complete a rectangle and it will count as your box and 
    you earn one point. Whoever has the most rectangles to their name
    wins the game.
]]

local push = require 'lib/push'

-- constants -- 
WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

X_OFFSET_HOR_LINE = 50
Y_OFFSET_HOR_LINE = 50


--assets
local player1 = "Sohaib"
local score1 = 0
local player2 = "Shizra"
local score2 = 0
local retrofont = love.graphics.newFont('fonts/pressstart.ttf', 12)
local turn = player1

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest') -- neareast neighbor
    love.graphics.setFont(retrofont)

    push:setupScreen(WINDOW_WIDTH, WINDOW_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT,{
        fullscreen = false, 
        vsync = true,
        resizable = true
    })
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.update()
    
end

function love.draw()

    push:start()
    drawGrid()
    --print scores--
    love.graphics.print(player1 .. "'s score:" .. score1,
                        X_OFFSET_HOR_LINE, Y_OFFSET_HOR_LINE - 20)
    love.graphics.print(player2 .. "'s score:" .. score2,
                        WINDOW_WIDTH- 5 * X_OFFSET_HOR_LINE, 
                        Y_OFFSET_HOR_LINE - 20)
    love.graphics.print(turn .. "'s turn",
                        WINDOW_WIDTH /2 - X_OFFSET_HOR_LINE, 
                        Y_OFFSET_HOR_LINE - 20)

    --print turn-- 
    -- love.graphics.print('Player ' .. currentPlayer .. "'s turn", 1, 1)

    push:finish()
    
end

function drawGrid()

    love.graphics.setLineWidth(2)
    love.graphics.line(X_OFFSET_HOR_LINE,
                        Y_OFFSET_HOR_LINE, 
                        WINDOW_WIDTH - X_OFFSET_HOR_LINE,
                        Y_OFFSET_HOR_LINE)
    love.graphics.line(X_OFFSET_HOR_LINE,
                        WINDOW_HEIGHT- Y_OFFSET_HOR_LINE,
                        WINDOW_WIDTH- X_OFFSET_HOR_LINE,
                        WINDOW_HEIGHT - Y_OFFSET_HOR_LINE)
    love.graphics.line(X_OFFSET_HOR_LINE,
                        Y_OFFSET_HOR_LINE,
                        X_OFFSET_HOR_LINE,
                        WINDOW_HEIGHT - Y_OFFSET_HOR_LINE)
    love.graphics.line(WINDOW_WIDTH - X_OFFSET_HOR_LINE,
                       Y_OFFSET_HOR_LINE,
                       WINDOW_WIDTH - X_OFFSET_HOR_LINE,
                       WINDOW_HEIGHT - Y_OFFSET_HOR_LINE)
    drawPoints()
end

function drawPoints()
    -- draws an 8x8 point matrix -- 

end