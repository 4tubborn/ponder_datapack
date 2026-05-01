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
scoreboard objectives add ponder.group dummy
scoreboard objectives add ponder.timer.in dummy
scoreboard objectives add ponder.timer.out dummy

#3位小数
scoreboard players set #scale_multiplier ponder.const 600

execute in ponder:ponder run forceload add 0 0

gamerule max_command_sequence_length 1048576

#advancement grant @a only ponder:process/next
#advancement grant @a only ponder:process/tick


execute unless score #auto_save ponder.const matches 0..1 run scoreboard players set #auto_save ponder.const 1

#register
execute if score #auto_save ponder.const matches 1 run function #ponder:register/scene