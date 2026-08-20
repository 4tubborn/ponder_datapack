data modify storage ponder:anim hide_section set value {\
    start_interpolation: 0,\
    interpolation_duration: 3,\
    transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}\
}

data modify storage ponder:anim hide_section.transformation.translation set from storage ponder:logic scene_buffer.hide_section.direction[0]
data remove storage ponder:logic scene_buffer.hide_section.direction[0]

data modify entity @s {} merge from storage ponder:anim hide_section
#function ponder:logic/world/block/anim/hide/interpolate_ with entity @s data.ponder.anim

scoreboard players reset @s ponder.timer.in
#tellraw @a ["block_hide: ",{storage:"ponder:logic",nbt:"block_hide",color:"yellow"}]