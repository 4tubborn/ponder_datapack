#say next
execute as @s[tag=!ponder.in_ponder] run return fail

data remove storage ponder:scene cur_cmd
data modify storage ponder:scene cur_cmd set from storage ponder:scene cur_scene[0]
execute unless data storage ponder:scene cur_cmd run return run function ponder:process/scene/load_multi
data remove storage ponder:scene cur_scene[0]

#tellraw @a ["cur_cmd: ",{storage:"ponder:scene",nbt:"cur_cmd"}]

function ponder:process/scene/single/decode

scoreboard players add #cur ponder.group 1
#若没有延时则直接进行下一个
execute if score @p[tag=ponder.in_ponder] ponder.timer matches 0 run return run function ponder:process/scene/single/next
#否则启用tick检测是否为0
advancement revoke @s only ponder:process/next