scoreboard objectives add ponder.press_cur dummy
scoreboard objectives add ponder.press_lst dummy
scoreboard objectives add ponder.timer dummy
scoreboard objectives add ponder.type dummy
scoreboard objectives add ponder.debug dummy
scoreboard objectives add ponder.scene dummy
scoreboard objectives add ponder.const dummy
scoreboard objectives add ponder.tmp dummy
scoreboard objectives add ponder.utils.in dummy
scoreboard objectives add ponder.utils.out dummy
scoreboard objectives add ponder.utils.tmp dummy
#3位小数
scoreboard players set #scale_multiplier ponder.const 300
scoreboard players set #shadow_area_offset ponder.const -100

execute in ponder:ponder run forceload add 0 0

gamerule max_command_sequence_length 1048576

advancement grant @a only ponder:process/next

execute unless score #auto_save ponder.const matches 0..1 run scoreboard players set #auto_save ponder.const 1

#register
execute if score #auto_save ponder.const matches 0 run return fail
function #ponder:register/scene