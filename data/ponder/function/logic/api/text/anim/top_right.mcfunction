data modify storage ponder:logic text.x set value 1
data modify storage ponder:logic text.y set value 0.6
data modify storage ponder:logic text.x set from storage ponder:logic text.grid[0]
data modify storage ponder:logic text.y set from storage ponder:logic text.grid[1]
execute at @p[tag=ponder.in_ponder] run function ponder:logic/text/anim/top_right/summon with storage ponder:logic text

execute unless data storage ponder:logic text.duration run data modify storage ponder:logic text.duration set value 30
execute as @n[tag=ponder.scene_entity,tag=ponder.init,type=text_display,tag=ponder.anim.text.top_right] run function ponder:logic/text/anim/top_right/set
#schedule function ponder:logic/text/anim/top_right/interpolate_fade_in 4t append