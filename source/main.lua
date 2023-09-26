import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/object"
import "circle"

local pd <const> = playdate
local gfx <const> = pd.graphics

local x, y = 200, 120
local r = 11
local playerSpeed = 3

local function initialize()
    print('init')
    -- local c = Circle(200, 120)
    -- c:add()
    -- local faceImage = gfx.image.new('images/face')
    local faceImage = gfx.image.new(r * 2, r * 2)
    -- gfx.pushContext(faceImage)
    -- gfx.drawCircleAtPoint(r, r, r)
    -- gfx.drawText('J', 6, 4)
    -- gfx.popContext()
    -- face = gfx.sprite.new(faceImage)
    -- face:setSize(r * 2, r * 2)

    -- function face:draw()
    --     gfx.drawCircleAtPoint(r, r, r)
    -- end

    face2 = Circle(100, 100, r, 4, 'J')
    face2:add()

    face = Circle(200, 120, r, 3, "A")
    face:add()

    face3 = Circle(250, 200, r, 2, "Y")
    face3:add()
end

initialize()

count = 1
isReversed = false
rx = nil
ry = nil


function pd.update()
    gfx.sprite.update()
    -- gfx.clear()
    -- gfx.drawText("Hello Casey Gillibrand", 20, 20)
    -- print('ok')

    count += 1

    face:move()
    face2:move()
    face3:move()
    -- local angle = math.rad(pd.getCrankPosition())

    -- local dx = math.sin(angle) * playerSpeed
    -- local dy = -math.cos(angle) * playerSpeed

    -- local newX = math.min(400, math.max(0, face.x + dx))
    -- local newY = math.min(240, math.max(0, face.y + dy))

    -- face:moveTo(newX, newY)
    if count % 30 == 0 then
        -- print('crank angle ' .. angle)
    end

    -- print(angle)
    -- x += math.sin(angle) * playerSpeed
    -- y -= math.cos(angle) * playerSpeed

    -- face:moveBy()
    -- gfx.fillCircleAtPoint(x, y, r)
end
