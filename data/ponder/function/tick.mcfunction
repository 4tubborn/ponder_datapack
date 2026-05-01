

#tellraw @a ["last: ",{score:{name:"@p",objective:"ponder.press_lst"}}," cur: ",{score:{name:"@p",objective:"ponder.press_cur"}}]
execute as @a[scores={ponder.press_lst=1,ponder.press_cur=0}] at @s run function ponder:trigger/

execute as @a run scoreboard players operation @s ponder.press_lst = @s ponder.press_cur
scoreboard players set @a ponder.press_cur 0

execute as @a run function ponder:test