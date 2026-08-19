#tellraw @a {storage:"ponder:scene",nbt:"text.duration"}

#tellraw @a ["text in stor: ",{storage:"ponder:logic",nbt:"text",color:"green"}]

function ponder:logic/text/anim/xyz
#say duration

execute unless data storage ponder:logic text.offset run data modify storage ponder:logic text.offset set value 3
#get alignment
function ponder:logic/text/anim/offset/get/alignment

function ponder:logic/text/anim/offset/summon with storage ponder:logic text

#schedule function ponder:logic/text/anim/offset/interpolate_fade_in 4t append

execute unless data storage ponder:logic text.duration run data modify storage ponder:logic text.duration set value 30
#将offset压入buffer，fade_in时取出
data modify storage ponder:logic scene_buffer.text_offset.offset append from storage ponder:logic text.offset
execute as @e[tag=ponder.init,tag=ponder.anim.text.offset,limit=2] run function ponder:logic/text/anim/offset/set
#data remove storage ponder:logic text