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
scoreboard objectives add ponder.scene.cam_rot dummy
scoreboard objectives add ponder.scene.cam_scal dummy

#3位小数
scoreboard players set #scale_multiplier ponder.const 600
scoreboard players set #cam.elastic_coef ponder.const 16
scoreboard players set #cam.damping_coef ponder.const 2
#x1e2
scoreboard players set #cam.max_speed ponder.const 250
scoreboard players set #cam.max_accel ponder.const 200
#x1e3
scoreboard players set #cam.max_scaling_speed ponder.const 200

execute in ponder:ponder run forceload add 0 0

#advancement grant @a only ponder:process/next
#advancement grant @a only ponder:process/tick


execute unless score #auto_save ponder.const matches 0..1 run scoreboard players set #auto_save ponder.const 1

#register
execute if score #auto_save ponder.const matches 1 run function #ponder:register/scene