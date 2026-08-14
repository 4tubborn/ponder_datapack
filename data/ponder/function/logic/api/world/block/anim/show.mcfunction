data modify storage ponder:anim buffer.block_show set from storage ponder:logic block_show.blocks

function ponder:logic/world/block/anim/show/

data remove storage ponder:logic block_show

#tellraw @a [{color:"red",text:"in s: "},{storage:"ponder:logic",nbt:"group.block.show"}]
#删除
execute as @e[tag=ponder.scene_entity,tag=ponder.anim.show,tag=ponder.init,type=block_display] run function ponder:logic/world/block/anim/show/set