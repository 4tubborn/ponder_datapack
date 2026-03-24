execute positioned as @n[tag=tu-utils.distance_anchor2] facing entity @n[tag=tu-utils.distance_anchor1] feet positioned 0.0 0.0 0.0 run tp ^ ^ ^1

execute as @n[tag=tu-utils.distance_anchor1] run say 1
execute as @n[tag=tu-utils.distance_anchor2] run say 2
execute at @s run setblock ~ ~ ~ diamond_block


execute store result score #unit_vec.x tu-utils.out run data get entity @s Pos[0] 1000
execute store result score #unit_vec.y tu-utils.out run data get entity @s Pos[1] 1000
execute store result score #unit_vec.z tu-utils.out run data get entity @s Pos[2] 1000

tellraw @a ["x: ",{score:{name:"#unit_vec.x",objective:"tu-utils.out"}},", y: ",{score:{name:"#unit_vec.y",objective:"tu-utils.out"}},", z: ",{score:{name:"#unit_vec.z",objective:"tu-utils.out"}}]
#tellraw @a ["nbt: ",{entity:"@s",nbt:"Pos"}]

execute if score #unit_vec.x tu-utils.out matches ..-1 run scoreboard players operation #unit_vec.x tu-utils.out *= #-1 tu-utils.num
execute if score #unit_vec.y tu-utils.out matches ..-1 run scoreboard players operation #unit_vec.y tu-utils.out *= #-1 tu-utils.num
execute if score #unit_vec.z tu-utils.out matches ..-1 run scoreboard players operation #unit_vec.z tu-utils.out *= #-1 tu-utils.num
