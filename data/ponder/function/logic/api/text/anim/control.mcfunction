#tellraw @a {storage:"ponder:scene",nbt:"text.duration"}

#tellraw @a ["text in stor: ",{storage:"ponder:logic",nbt:"text",color:"red"}]

function ponder:logic/text/anim/xyz
#生成文本组件到storage
data remove storage ponder:logic text.buffered_text
function ponder:logic/text/anim/control/text
execute unless data storage ponder:logic text.buffered_text run data modify storage ponder:logic text.buffered_text set value [{text:""}]

#tellraw @a ["text buffer: ",{storage:"ponder:logic",nbt:"text.buffered_text",color:"green"}]

function ponder:logic/text/anim/control/summon with storage ponder:logic text
#淡入
schedule function ponder:logic/text/anim/control/interpolate_fade_in 4t append
scoreboard players set @n[tag=ponder.scene_entity,tag=ponder.init,type=text_display,tag=ponder.anim.text.control] ponder.timer.in 4
#淡出通过tick实现
execute unless data storage ponder:logic text.duration run data modify storage ponder:logic text.duration set value 50
execute store result score @n[tag=ponder.scene_entity,tag=ponder.init,type=text_display,tag=ponder.anim.text.control] ponder.timer run data get storage ponder:logic text.duration
tag @n[tag=ponder.init,type=text_display,tag=ponder.anim.text.control] remove ponder.init
#tellraw @a ["score: ",{score:{name:"@n[tag=ponder.scene_entity,tag=ponder.init,type=text_display]",objective:"ponder.timer"}}]

#data remove storage ponder:logic text