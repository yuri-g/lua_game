local DrawableGameObject = require('src.game.drawable_game_object')
local DrawableCircle = require('src.game.drawable_shapes.circle')

local Circle = DrawableGameObject:extend()

function Circle:new(area, x, y, radius)
  self.drawable = DrawableCircle(x, y, radius)

  Circle.super.new(self, self.drawable, area, x, y)
end

function Circle:expand(radius_dt, expansion_time)
  self.drawable:expand(radius_dt, expansion_time)
end

return Circle
