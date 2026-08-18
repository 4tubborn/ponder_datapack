execute store result score @s ponder.timer run data get storage ponder:logic text.duration
scoreboard players set @s ponder.timer.in 4
#根据距离调整大小，为了在视觉上一样大
function ponder:logic/text/anim/control/scale
tag @s remove ponder.init