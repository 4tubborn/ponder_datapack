data modify storage ponder:logic entity.nbt merge value {Tags:["ponder.scene_entity"]}
execute unless data storage ponder:logic {entity:{no_ai:false}} run data modify storage ponder:logic entity.nbt set value {NoAI:true}
#say summon

function ponder:logic/world/entity/default/ with storage ponder:logic entity

data remove storage ponder:logic entity