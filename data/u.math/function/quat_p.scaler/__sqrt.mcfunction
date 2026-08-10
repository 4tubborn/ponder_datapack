execute store result score #y u.variable store result score #t2 u.variable run scoreboard players operation #t1 u.variable = quat_p.scaler u.variable
function u.math:quat_p.scaler/__sqrt/process
scoreboard players operation #t2 u.variable /= quat_p.scaler u.variable
scoreboard players operation quat_p.scaler u.variable += #t2 u.variable
scoreboard players operation quat_p.scaler u.variable /= #2 u.constant
scoreboard players operation #y u.variable /= quat_p.scaler u.variable
execute if score #y u.variable < quat_p.scaler u.variable run scoreboard players remove quat_p.scaler u.variable 1
