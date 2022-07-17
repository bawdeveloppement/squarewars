local BrainComponent = require(_G.libDir .. "middleclass")("Brain")

BrainComponent.static.name = "Brain"
BrainComponent.static.client = false

function BrainComponent:initialize(brain)
    self.brain = brain or nil
end

return BrainComponent