execute as @s[gamemode=survival] run return run scoreboard players set #gamemode ponder.scene 0
execute as @s[gamemode=creative] run return run scoreboard players set #gamemode ponder.scene 1
execute as @s[gamemode=adventure] run return run scoreboard players set #gamemode ponder.scene 2
execute as @s[gamemode=spectator] run return run scoreboard players set #gamemode ponder.scene 3
return run scoreboard players set #gamemode ponder.scene -1