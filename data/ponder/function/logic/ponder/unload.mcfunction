#被schedule执行，位置在世界出生点（基本在overworld的0,0附近）


#清场
execute in ponder:ponder positioned 0.0 0.0 0.0 run function ponder:logic/ponder/rm/kill
#清理ponder维度
#scoreboard players set #success ponder.debug 0
#tellraw @a ["success: ",{score:{name:"#success",objective:"ponder.debug"}}]

execute in ponder:ponder run tp @e[type=!player,distance=0..] 0 -127 0

#kill @n[type=text_display,tag=ponder.camera]

#tellraw @a ["success: ",{score:{name:"#success",objective:"ponder.debug"}}]