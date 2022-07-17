local Entity = require(_G.engineDir .. "entity")
local CharacterEntity = require(_G.libDir .. "middleclass")("CharacterEntity", Entity)

-- Components
local Components            = require(_G.componentsDir .. "components")

function CharacterEntity:initialize( id, data)
    Entity.initialize(self, id, {
        Components.Position:new( data.position ),
        Components.Orientation:new( data.orientation ),
        Components.Dimension:new( data.dimension ),
        Components.Hand:new( data.hand ),
        Components.Eye:new( data.viewDistance ),
        Components.Intelligence:new( data.intelligence ),
        Components.Force:new( data.force ),
        Components.Speed:new( data.speed ),
        Components.Agility:new( data.agility ),
        Components.Life:new( data.life ),
        Components.Fame:new( data.fame ),
        Components.Wallet:new( data.wallet ),
        Components.Clan:new( data.clan ),
        Components.Quest:newt( data.quest ),
        Components.Name:new( data.name )
    })
end

return CharacterEntity