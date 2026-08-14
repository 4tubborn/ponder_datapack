#插值移动
data modify storage ponder:tmp move.start_interpolation set value 0
data modify storage ponder:tmp move.transformation.translation set from entity @s data.ponder.anim.direction
data modify entity @s {} merge from storage ponder:tmp move

scoreboard players reset @s ponder.timer.in

say inter
#tellraw @a ["block_hide: ",{storage:"ponder:logic",nbt:"block_hide",color:"yellow"}]