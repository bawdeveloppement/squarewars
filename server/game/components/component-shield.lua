local ArmorComponent = require(_G.libDir .. "middleclass")("Shield")

ArmorComponent.static.name = "Shield"
ArmorComponent.static.client = true

function ArmorComponent:initialize(armor)
    self.activated = false
    self.armor = armor or 100
end

function ArmorComponent:applyReducer(reducer)
    self.armor = self.armor - reducer
end

return ArmorComponent


-- Get the square points of the rectangle
