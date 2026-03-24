scoreboard objectives add ponder.press_cur dummy
scoreboard objectives add ponder.press_lst dummy
scoreboard objectives add ponder.timer dummy
scoreboard objectives add ponder.type dummy
scoreboard objectives add ponder.debug dummy
scoreboard objectives add ponder.scene dummy
scoreboard objectives add ponder.const dummy
scoreboard objectives add ponder.tmp dummy
#3位小数
scoreboard players set #scale_multiplier ponder.const 300

execute in ponder:ponder run forceload add 0 0