tag @a[tag=ponder.load] add ponder.in_ponder
tag @a[tag=ponder.in_ponder] remove ponder.load

say load

execute as @a[tag=ponder.in_ponder] in ponder:ponder run function ponder:logic/ponder/init/

execute in ponder:ponder run summon text_display -2 5.5 -2 {Tags:["ponder.camera"],Rotation:[-45,45]}

scoreboard players set #enabled ponder.timer 1
scoreboard players set #timer ponder.timer 0