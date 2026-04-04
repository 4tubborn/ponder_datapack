$setblock ~ ~ ~ $(id)

#tellraw @a {entity:"@s",nbt:"block_state"}

#function ponder:util/block/anim/fall/en_to_block/

tag @s add ponder.anim.finished

#function ponder:logic/world/block/anim/show/solidify/hide_bde
kill @s