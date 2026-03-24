execute store result score #float_cand tu-utils.tmp run data get storage tu-utils:in float_num 10
scoreboard players operation #float_cand tu-utils.tmp %= #10 tu-utils.num
execute if score #float_cand tu-utils.tmp matches 0 run return 1
return 0