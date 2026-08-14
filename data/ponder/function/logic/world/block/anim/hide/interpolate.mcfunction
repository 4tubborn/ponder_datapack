#每个bde都单独调用一个宏
function ponder:logic/world/block/anim/hide/interpolate_ with entity @s data.ponder.anim

scoreboard players reset @s ponder.timer.in
#tellraw @a ["block_hide: ",{storage:"ponder:logic",nbt:"block_hide",color:"yellow"}]