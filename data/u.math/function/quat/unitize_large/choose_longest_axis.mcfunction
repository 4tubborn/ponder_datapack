execute store result score quat.temp u.variable run data get storage u.math:variable context.pos1[0] 100000
execute if score quat.temp u.variable matches 57735.. run return run execute store result score quat.scaler u.variable run data get storage u.math:variable context.pos[0] 1000000
execute if score quat.temp u.variable matches ..-57735 run return run execute store result score quat.scaler u.variable run data get storage u.math:variable context.pos[0] 1000000
execute store result score quat.temp u.variable run data get storage u.math:variable context.pos1[1] 100000
execute if score quat.temp u.variable matches 57735.. run return run execute store result score quat.scaler u.variable run data get storage u.math:variable context.pos[1] 1000000
execute if score quat.temp u.variable matches ..-57735 run return run execute store result score quat.scaler u.variable run data get storage u.math:variable context.pos[1] 1000000
execute store result score quat.temp u.variable run data get storage u.math:variable context.pos1[2] 100000
return run execute store result score quat.scaler u.variable run data get storage u.math:variable context.pos[2] 1000000
