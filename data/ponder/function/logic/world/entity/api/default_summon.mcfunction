data modify storage ponder:anim entity set from storage ponder:scene entity
data modify storage ponder:anim entity.nbt merge value {Tags:["ponder.scene_entity"]}

say summon

function ponder:util/entity/default/ with storage ponder:anim entity

data remove storage ponder:scene entity