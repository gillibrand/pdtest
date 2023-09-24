import "CoreLibs/graphics"

local gfx <const> = playdate.graphics

function playdate.update() 
    gfx.clear()
    gfx.drawText("Hello Casey Gillibrand", 20, 20)
end