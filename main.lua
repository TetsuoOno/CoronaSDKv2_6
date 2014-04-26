local physics = require ("physics")
physics.start( )

local _W = display.contentWidth
local _H = display.contentHeight

local back = display.newRect(_W/2, _H/2, _W, _H)

local rect = display.newRect(_W/2, _H*3/4, _W, 10)
rect:setFillColor(0.5, 0.3, 0.1)
rect.rotation = 15
physics.addBody( rect, "static",{ })

local function onTouch(event)
	if(event.phase == "ended")then
		local circle = display.newCircle(50, 50, 20)
		circle:setFillColor(0, 0.6, 0.8)
		physics.addBody( circle, { radius = 20})
	end
end

Runtime:addEventListener( "touch", onTouch )
