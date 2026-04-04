#过滤玩家
execute as @s[type=player] run return run tellraw @a {text:"Player cannot be removed",color:"red"}
tp @s 0 -127 0
#kill @s