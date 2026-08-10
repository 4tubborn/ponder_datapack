execute store result storage u.math:variable context.x double 0.0001 run scoreboard players get quat_p.x u.variable
execute store result storage u.math:variable context.y double 0.0001 run scoreboard players get quat_p.y u.variable
execute store result storage u.math:variable context.z double 0.0001 run scoreboard players get quat_p.z u.variable
execute store result storage u.math:variable context.w double 0.0001 run scoreboard players get quat_p.w u.variable
execute in overworld as 1552e63e-d542-4802-b8cc-92caddbcaab5 run function u.math:quat_p/unitize_large/teleport with storage u.math:variable context
function u.math:quat_p/unitize_large/choose_longest_axis
function u.math:quat_p.scaler/__mult_1000_div_small_qtemp
scoreboard players operation quat_p.temp u.variable = quat_p.scaler u.variable
scoreboard players operation quat_p.scaler u.variable = quat_p.x u.variable
scoreboard players operation quat_p.scaler u.variable *= #10 u.constant
function u.math:quat_p.scaler/__mult_1000_div_small_qtemp
scoreboard players operation quat_p.x u.variable = quat_p.scaler u.variable
scoreboard players operation quat_p.scaler u.variable = quat_p.y u.variable
scoreboard players operation quat_p.scaler u.variable *= #10 u.constant
function u.math:quat_p.scaler/__mult_1000_div_small_qtemp
scoreboard players operation quat_p.y u.variable = quat_p.scaler u.variable
scoreboard players operation quat_p.scaler u.variable = quat_p.z u.variable
scoreboard players operation quat_p.scaler u.variable *= #10 u.constant
function u.math:quat_p.scaler/__mult_1000_div_small_qtemp
scoreboard players operation quat_p.z u.variable = quat_p.scaler u.variable
scoreboard players operation quat_p.scaler u.variable = quat_p.w u.variable
scoreboard players operation quat_p.scaler u.variable *= #10 u.constant
function u.math:quat_p.scaler/__mult_1000_div_small_qtemp
scoreboard players operation quat_p.w u.variable = quat_p.scaler u.variable
scoreboard players operation quat_p.scaler u.variable = quat_p.temp u.variable
