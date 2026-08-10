#执行维度为ponder

#清场
execute in ponder:ponder positioned 0.0 0.0 0.0 run function ponder:logic/ponder/rm/kill
#清理ponder维度
#scoreboard players set #success ponder.debug 0
#tellraw @a ["success: ",{score:{name:"#success",objective:"ponder.debug"}}]

#kill @n[type=text_display,tag=ponder.camera]

#tellraw @a ["success: ",{score:{name:"#success",objective:"ponder.debug"}}]