execute as @a[tag=ponder.in_ponder] at @s run function ponder:util/ponder/match_type
execute as @a[tag=ponder.in_ponder] at @s run function ponder:util/player/stick

execute if score #enabled ponder.timer matches 1 run scoreboard players add #timer ponder.timer 1

#初始化完毕的bde,tde倒计时
scoreboard players remove @e[tag=ponder.scene_entity,tag=!ponder.init,scores={ponder.timer=1..}] ponder.timer 1
execute as @e[tag=ponder.scene_entity,tag=!ponder.init,type=block_display,scores={ponder.timer=0}] positioned as @s in ponder:ponder run function ponder:util/block/anim/fall/solidify/
execute as @e[tag=ponder.scene_entity,tag=!ponder.init,type=text_display,scores={ponder.timer=0}] positioned as @s in ponder:ponder run function ponder:util/text/anim/interpolate_fade_out