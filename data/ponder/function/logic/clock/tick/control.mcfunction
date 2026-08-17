#淡入
execute as @s[scores={ponder.timer.in=0}] run return run function ponder:logic/text/anim/control/interpolate_fade_in
#淡出
execute as @s[scores={ponder.timer=0}] positioned as @s run return run function ponder:logic/text/anim/control/interpolate_fade_out
#删除
execute as @s[scores={ponder.timer.out=0}] positioned as @s run return run function ponder:logic/text/anim/control/remove