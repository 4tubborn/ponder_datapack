$setblock ~ ~ ~ $(id)$(state)

#tellraw @a {entity:"@s",nbt:"block_state"}

#function ponder:util/block/anim/fall/en_to_block/

tag @s add ponder.remove

kill @s