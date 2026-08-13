advancement revoke @s only ponder:process/tick

#execute if score #enabled ponder.timer matches 1 run scoreboard players add #timer ponder.timer 1
#say tick


#初始化完毕的bde,tde,ide倒计时
scoreboard players remove @e[tag=ponder.scene_entity,tag=!ponder.init,scores={ponder.timer=1..},type=#ponder:scene_entity,distance=..128] ponder.timer 1
scoreboard players remove @e[tag=ponder.scene_entity,tag=!ponder.init,scores={ponder.timer.in=1..},type=#ponder:scene_entity,distance=..128] ponder.timer.in 1
scoreboard players remove @e[tag=ponder.scene_entity,tag=!ponder.init,scores={ponder.timer.out=1..},type=#ponder:scene_entity,distance=..128] ponder.timer.out 1

#show
execute as \
@e[tag=ponder.scene_entity,tag=ponder.anim.show,tag=!ponder.init,type=block_display,scores={ponder.timer.in=0}] \
run function ponder:logic/world/block/anim/show/interpolate
execute as \
@e[tag=ponder.scene_entity,tag=ponder.anim.show,tag=!ponder.init,type=block_display,scores={ponder.timer=0}] \
positioned as @s run function ponder:logic/world/block/anim/show/solidify/

#hide
execute as \
@e[tag=ponder.scene_entity,tag=ponder.anim.hide,tag=!ponder.init,type=block_display,scores={ponder.timer.in=0}] \
run function ponder:logic/world/block/anim/hide/interpolate
execute as \
@e[tag=ponder.scene_entity,tag=ponder.anim.hide,tag=!ponder.init,type=block_display,scores={ponder.timer=0}] \
positioned as @s run function ponder:logic/world/block/anim/hide/remove

#text: offset
execute as \
@e[tag=ponder.scene_entity,tag=ponder.anim.text.offset,tag=!ponder.init,type=text_display,scores={ponder.timer.in=0}] \
positioned as @s run function ponder:logic/text/anim/offset/interpolate_fade_in
execute as \
@e[tag=ponder.scene_entity,tag=ponder.anim.text.offset,tag=!ponder.init,type=text_display,scores={ponder.timer=0}] \
positioned as @s run function ponder:logic/text/anim/offset/interpolate_fade_out

#text: top_right
execute as @e[tag=ponder.scene_entity,tag=ponder.anim.text.top_right,tag=!ponder.init,type=text_display,scores={ponder.timer.in=0}] positioned as @s run function ponder:logic/text/anim/top_right/interpolate_fade_in
execute as @e[tag=ponder.scene_entity,tag=ponder.anim.text.top_right,tag=!ponder.init,type=text_display,scores={ponder.timer=0}] positioned as @s run function ponder:logic/text/anim/top_right/interpolate_fade_out

#text: control
#淡入
execute as \
@e[tag=ponder.scene_entity,tag=ponder.anim.text.control,tag=!ponder.init,type=text_display,scores={ponder.timer.in=0}] \
run function ponder:logic/text/anim/control/interpolate_fade_in
#淡出
execute as \
@e[tag=ponder.scene_entity,tag=ponder.anim.text.control,tag=!ponder.init,type=text_display,scores={ponder.timer=0}] \
positioned as @s run function ponder:logic/text/anim/control/interpolate_fade_out
#删除
execute as \
@e[tag=ponder.scene_entity,tag=ponder.anim.text.control,tag=!ponder.init,type=text_display,scores={ponder.timer.out=0}] \
positioned as @s run function ponder:logic/text/anim/control/remove

#outline
execute as @e[tag=ponder.scene_entity,tag=ponder.anim.outline,tag=!ponder.init,type=item_display,scores={ponder.timer=0}] run function ponder:logic/world/block/anim/outline/remove