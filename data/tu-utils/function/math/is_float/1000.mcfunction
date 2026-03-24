execute store result score #float_cand tu-utils.tmp run data get storage tu-utils:in float_num 1000
scoreboard players operation #float_cand tu-utils.tmp %= #1000 tu-utils.num
execute if score #float_cand tu-utils.tmp matches 0 run return 1
return 0