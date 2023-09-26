import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/object"

local pd <const> = playdate
local gfx <const> = pd.graphics

class('Circle').extends(gfx.sprite)

function Circle:init(x, y, r, speed, text)
	Circle.super.init(self)
	self:setSize(r * 2, r * 2)
	self:moveTo(x, y)

	self.x = x
	self.y = y
	self.r = r
	self.speed = speed
	self.text = text
end

function Circle:draw()
	print('draw')
	gfx.drawCircleAtPoint(self.r, self.r, self.r)
	gfx.drawText(self.text, 7, 3)
end

local playerSpeed <const> = 3


function Circle:move()
	local angle = math.rad(pd.getCrankPosition())

	local dx = math.sin(angle) * self.speed
	local dy = -math.cos(angle) * self.speed

	local newX = math.min(400, math.max(0, self.x + dx))
	local newY = math.min(240, math.max(0, self.y + dy))

	self:moveTo(newX, newY)
end
