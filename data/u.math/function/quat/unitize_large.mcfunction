execute store result storage u.math:variable context.x double 0.0001 run scoreboard players get quat.x u.variable
execute store result storage u.math:variable context.y double 0.0001 run scoreboard players get quat.y u.variable
execute store result storage u.math:variable context.z double 0.0001 run scoreboard players get quat.z u.variable
execute store result storage u.math:variable context.w double 0.0001 run scoreboard players get quat.w u.variable
execute in overworld as 1552e63e-d542-4802-b8cc-92caddbcaab5 run function u.math:quat/unitize_large/teleport with storage u.math:variable context
function u.math:quat/unitize_large/choose_longest_axis
function u.math:quat.scaler/__mult_1000_div_small_qtemp
scoreboard players operation quat.temp u.variable = quat.scaler u.variable
scoreboard players operation quat.scaler u.variable = quat.x u.variable
scoreboard players operation quat.scaler u.variable *= #10 u.constant
function u.math:quat.scaler/__mult_1000_div_small_qtemp
scoreboard players operation quat.x u.variable = quat.scaler u.variable
scoreboard players operation quat.scaler u.variable = quat.y u.variable
scoreboard players operation quat.scaler u.variable *= #10 u.constant
function u.math:quat.scaler/__mult_1000_div_small_qtemp
scoreboard players operation quat.y u.variable = quat.scaler u.variable
scoreboard players operation quat.scaler u.variable = quat.z u.variable
scoreboard players operation quat.scaler u.variable *= #10 u.constant
function u.math:quat.scaler/__mult_1000_div_small_qtemp
scoreboard players operation quat.z u.variable = quat.scaler u.variable
scoreboard players operation quat.scaler u.variable = quat.w u.variable
scoreboard players operation quat.scaler u.variable *= #10 u.constant
function u.math:quat.scaler/__mult_1000_div_small_qtemp
scoreboard players operation quat.w u.variable = quat.scaler u.variable
scoreboard players operation quat.scaler u.variable = quat.temp u.variable
