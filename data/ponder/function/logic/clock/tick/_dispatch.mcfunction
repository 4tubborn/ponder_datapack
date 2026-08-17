scoreboard players remove @s[scores={ponder.timer=1..}] ponder.timer 1
scoreboard players remove @s[scores={ponder.timer.in=1..}] ponder.timer.in 1
scoreboard players remove @s[scores={ponder.timer.out=1..}] ponder.timer.out 1

#show
execute as @s[type=block_display,tag=ponder.anim.show] run return run function ponder:logic/clock/tick/show
#hide
execute as @s[type=block_display,tag=ponder.anim.hide] run return run function ponder:logic/clock/tick/hide
#move
execute as @s[type=block_display,tag=ponder.anim.move] run return run function ponder:logic/clock/tick/move
#offset
execute as @s[type=text_display,tag=ponder.anim.text.offset] run return run function ponder:logic/clock/tick/offset
#top_right
execute as @s[type=text_display,tag=ponder.anim.text.top_right] run return run function ponder:logic/clock/tick/top_right
#control
execute as @s[type=text_display,tag=ponder.anim.text.control] run return run function ponder:logic/clock/tick/control
#outline
execute as @s[type=item_display,tag=ponder.anim.outline] run return run function ponder:logic/clock/tick/outline