#say dispatch

execute as @s[tag=ponder.anim.text.control] run return run function ponder:logic/text/anim/control/tick/move
execute as @s[tag=ponder.anim.text.offset] run return run function ponder:logic/text/anim/offset/tick/move
execute as @s[tag=ponder.anim.text.top_right] run return run function ponder:logic/text/anim/top_right/tick/move