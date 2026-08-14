data modify storage ponder:logic entity.nbt merge value {Tags:["ponder.entity"]}
execute unless data storage ponder:logic {entity:{no_ai:false}} run data modify storage ponder:logic entity.nbt set value {NoAI:true}
#say summon
data modify storage ponder:logic entity.x set from storage ponder:logic entity.pos[0]
data modify storage ponder:logic entity.y set from storage ponder:logic entity.pos[1]
data modify storage ponder:logic entity.z set from storage ponder:logic entity.pos[2]

function ponder:logic/world/entity/default/ with storage ponder:logic entity

data remove storage ponder:logic entity