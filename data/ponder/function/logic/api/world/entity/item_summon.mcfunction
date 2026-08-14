data modify storage ponder:logic item_entity.nbt.Item set from storage ponder:logic item_entity.item
data modify storage ponder:logic item_entity.nbt merge value {Tags:["ponder.entity"]}
data modify storage ponder:logic item_entity.nbt.Motion set from storage ponder:logic item_entity.motion

data modify storage ponder:logic item_entity.x set from storage ponder:logic item_entity.pos[0]
data modify storage ponder:logic item_entity.y set from storage ponder:logic item_entity.pos[1]
data modify storage ponder:logic item_entity.z set from storage ponder:logic item_entity.pos[2]

function ponder:logic/world/entity/item/ with storage ponder:logic item_entity
data remove storage ponder:logic item_entity