#重置计时器
advancement grant @s only ponder:process/next

#tellraw @a [{color:"green",text:"====================================="}]

scoreboard players set @s ponder.timer 0

advancement revoke @s only ponder:process/tick
advancement revoke @s only ponder:process/second
advancement revoke @s only ponder:process/cam_moving
#玩家tag
tag @s add ponder.in_ponder
tag @s remove ponder.load