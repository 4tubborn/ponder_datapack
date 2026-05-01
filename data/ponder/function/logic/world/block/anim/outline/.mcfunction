

#say show_outline

execute unless data storage ponder:logic outline.scale run data modify storage ponder:logic outline.scale set value [1,1,1]
execute unless data storage ponder:logic outline.color run data modify storage ponder:logic outline.color set value 0
function ponder:logic/world/block/anim/outline/_ with storage ponder:logic outline

execute unless data storage ponder:logic outline.duration run data modify storage ponder:logic outline.duration set value 20
execute store result score @n[type=item_display,tag=ponder.init,tag=ponder.anim.outline] ponder.timer run data get storage ponder:logic outline.duration

#tellraw @a ["score: ",{score:{name:"@n[type=item_display,tag=ponder.init,tag=ponder.anim.outline]",objective:"ponder.timer"}}]

tag @n[type=item_display,tag=ponder.init,tag=ponder.anim.outline] remove ponder.init