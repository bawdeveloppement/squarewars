local DestroySystem = require(_G.libDir .. "middleclass")("DestroySystem")

local Compositions = require(_G.gameDir .. "compositions")

function DestroySystem:initialize( world )
    self.world = world
end

function DestroySystem:update(dt)
    for i, v in ipairs(self.world.entities) do
        if v.markDestroy == true then
            self.world:removeEntityById(v.id)
        end
    end

    local characters = self.world:getEntitiesWithAtLeast(Compositions.Character) do
        for i, char in ipairs(characters) do
            local charLife = char:getComponent("Life") do
                if charLife.life <= 0 then
                    self.world:removeEntityById(char.id)
                end
            end
        end
    end
end

return DestroySystem