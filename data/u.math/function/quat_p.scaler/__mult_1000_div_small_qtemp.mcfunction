execute if score quat_p.scaler u.variable matches -2147483..2147483 run return run function u.math:quat_p.scaler/__mult_1000_div_small_qtemp/case_0
scoreboard players operation #t1 u.variable = quat_p.scaler u.variable
scoreboard players operation #t1 u.variable %= quat_p.temp u.variable
scoreboard players operation #t1 u.variable *= #1000 u.constant
scoreboard players operation #t1 u.variable /= quat_p.temp u.variable
scoreboard players operation quat_p.scaler u.variable /= quat_p.temp u.variable
scoreboard players operation quat_p.scaler u.variable *= #1000 u.constant
scoreboard players operation quat_p.scaler u.variable += #t1 u.variable
