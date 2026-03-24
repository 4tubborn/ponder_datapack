$setblock ~ ~ ~ $(Name)

tellraw @a {entity:"@s",nbt:"block_state"}


tag @s add ponder.remove

kill @s