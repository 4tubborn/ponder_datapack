#被schedule执行，位置在世界出生点（基本在overworld的0,0附近）



#清理ponder维度
#scoreboard players set #success ponder.debug 0
execute in ponder:ponder run fill -4 -4 -4 16 16 16 air
#tellraw @a ["success: ",{score:{name:"#success",objective:"ponder.debug"}}]

execute in ponder:ponder run tp @e[type=!player,distance=0..] 0 -127 0

#kill @n[type=text_display,tag=ponder.camera]
#清除相机
execute in ponder:ponder positioned 0.0 0.0 0.0 store result score #success ponder.debug run kill 1c595-1-8319-0-1
#tellraw @a ["success: ",{score:{name:"#success",objective:"ponder.debug"}}]
#去掉forceload，到下一次enter再add
execute in ponder:ponder positioned 0.0 0.0 0.0 run forceload remove 0 0
