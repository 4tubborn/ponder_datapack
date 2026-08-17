execute as @s[scores={ponder.timer.in=0}] positioned as @s run return run function ponder:logic/text/anim/offset/interpolate_fade_in
execute as @s[scores={ponder.timer=0}] positioned as @s run return run function ponder:logic/text/anim/offset/interpolate_fade_out
execute as @s[scores={ponder.timer.out=0}] positioned as @s run function ponder:logic/text/anim/offset/remove