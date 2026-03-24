#tellraw @a {storage:"ponder:scene",nbt:"text.duration"}

function ponder:util/text/anim/summon with storage ponder:scene text

schedule function ponder:util/text/anim/interpolate_fade_in 4t

execute as @e[tag=ponder.scene_entity,tag=ponder.init,type=text_display] store result score @s ponder.timer run data get storage ponder:scene text.duration
data remove storage ponder:scene text